# Parses a luanti settingtypes.txt into a structured Attribute set.
# Usage: let
#    fromSettingtypes = import ./settingtypes-parser.nix pkgs.lib;
# in
#    fromSettingtypes ./path/to/settingtypes.txt

# Structure of settingtypes.txt files is described in the first comment of https://github.com/luanti-org/luanti/blob/29476f406b21379bea2565140aa7a94500597b96/builtin/settingtypes.txt

# Output structure is:
# {
#   categories = [
#     {
#       name = "Category Name";
#       context = "client"; # optional
#       categories = [ ... ]; # subcategories (optional)
#       settings = [ ... ]; # settings in this category (optional)
#     }
#   ];
#   settings = [
#     {
#       name = "setting_name";
#       readableName = "Setting Readable Name";
#       context = "client"; # optional
#       description = "A description of the setting.\nCan be multiline.";
#       requirements = { setting_name = true; other_setting = false; }; # optional, map of setting names to required (true) or forbidden (false)
#       type = "int" | "bool" | "string" | "float" | "enum" | "path" | "filepath" | "key" | "flags" | "noise_params_2d" | "noise_params_3d" | "v3f";
#       default = ...; # type-dependent
#       min = ...; # for int and float, optional
#       max = ...; # for int and float, optional
#       options = [ ... ]; # for enum, list of strings
#       possibleFlags = [ ... ]; # for flags, list of strings
#       ... # other type-dependent fields
#     }
#   ]
# }

lib: input:
with builtins;
let

  nix-parsec = import (
    builtins.fetchTarball {
      url = "https://github.com/nprindle/nix-parsec/archive/v0.2.0.tar.gz";
      sha256 = "sha256:1v1krqzvpmb39s42m5gg2p7phhp4spd0vkb4wlhfkgbhi20dk5w7";
    }
  );

  inherit (nix-parsec) parsec lexer;
  inherit (parsec)
    bind
    option
    eof
    alt
    many
    pure
    skip
    choice
    sequence
    fmap
    skipMany
    optional
    many1
    thenSkip
    skipThen
    takeWhile1
    takeWhile
    ;
  lexeme = lexer.lexeme spaces;

  spaces = parsec.skipWhile (c: c == " " || c == "\t");
  symbol = lexer.symbol spaces;

  name = lexeme <| takeWhile1 (c: match "[.0-9a-z_-]" c != null);
  readableName = lexeme <| takeWhile1 (c: match "[^\n()]" c != null);
  categoryName =
    lexeme
    <| takeWhile1 (
      c:
      elem c [
        "\n"
        "["
        "]"
        "*"
      ] == false
    );

  parens = p: skipThen (symbol "(") (thenSkip p (symbol ")"));
  brackets = p: skipThen (symbol "[") (thenSkip p (symbol "]"));

  toIntOrNull' =
    str: curr:
    let
      firstChar = substring 0 1 str;
      digit = fromJSON firstChar;
      rest = substring 1 (stringLength str - 1) str;
      maxInt = 9223372036854775807;

    in
    if str == "" then
      curr
    else if firstChar == "-" && curr == 0 then
      (-1) * toIntOrNull' rest 0
    else if maxInt / 10 - digit < curr then
      lib.warn "[parsing settingtypes] Integer out of bounds. ${toString curr}${str} is ignored" null
    else
      toIntOrNull' rest (curr * 10 + digit);

  toIntOrNull = str: toIntOrNull' str 0;

  integer = fmap toIntOrNull (lexeme (takeWhile1 (c: builtins.match "[0-9-]" c != null)));
  boolean = fmap fromJSON (choice [
    (symbol "true")
    (symbol "false")
  ]);
  float_lexeme = alt (fmap (val: fromJSON "${toString <| head val}.${elemAt val 2}") (
    lexeme (sequence [
      (option 0 (takeWhile1 (c: builtins.match "[0-9-]" c != null)))
      (symbol ".")
      (takeWhile1 (c: builtins.match "[0-9]" c != null))
    ])
  )) integer;
  enum_lexeme_default =
    lexeme
    <| takeWhile (
      c:
      elem c [
        ","
        "\n"
        " "
      ] == false
    );
  enum_lexeme_values =
    lexeme
    <| takeWhile (
      c:
      elem c [
        ","
        "\n"
      ] == false
    );

  int = skipThen (symbol "int") (
    alt
      (fmap
        (
          val:
          {
            type = "int";
            default = elemAt val 0;
            min = elemAt val 1;
          }
          // (if elemAt val 2 == null then { } else { max = elemAt val 2; })
        )
        (sequence [
          integer
          integer
          (option null integer)
        ])
      )
      (
        fmap (val: {
          type = "int";
          default = val;
          __toStringType = self: "int ${toString self.default}";
        }) integer
      )

  );

  string = skipThen (symbol "string") (
    fmap (val: {
      type = "string";
      default = val;
    }) (takeWhile (c: c != "\n"))
  );

  bool = skipThen (symbol "bool") (
    fmap (val: {
      type = "bool";
      default = val;
    }) boolean
  );

  float = skipThen (symbol "float") (
    alt
      (fmap
        (
          val:
          {
            type = "float";
            default = elemAt val 0;
            min = elemAt val 1;

          }
          // (if elemAt val 2 == null then { } else { max = elemAt val 2; })
        )
        (sequence [
          float_lexeme
          float_lexeme
          (option null float_lexeme)
        ])
      )
      (
        fmap (val: {
          type = "float";
          default = val;
        }) float_lexeme
      )

  );

  enum = skipThen (symbol "enum") (
    fmap
      (val: {
        type = "enum";
        default = head val;
        options = [ (elemAt val 1) ] ++ (elemAt val 2);
      })
      (sequence [
        enum_lexeme_default
        enum_lexeme_values
        (many (skipThen (symbol ",") enum_lexeme_values))
      ])
  );

  path = skipThen (symbol "path") (
    fmap (val: {
      type = "path";
      default = val;
    }) (takeWhile (c: c != "\n"))
  );
  filepath = skipThen (symbol "filepath") (
    fmap (val: {
      type = "filepath";
      default = val;
    }) (takeWhile (c: c != "\n"))
  );
  key = skipThen (symbol "key") (
    fmap (val: {
      type = "key";
      default = val;
    }) (takeWhile (c: c != "\n"))
  );

  flags = skipThen (symbol "flags") (
    fmap
      (val: {
        type = "flags";
        default = [ (head val) ] ++ (elemAt val 1);
        possibleFlags = [ (elemAt val 2) ] ++ (elemAt val 3);
      })
      (sequence [
        enum_lexeme_default
        (many (skipThen (symbol ",") enum_lexeme_default))
        enum_lexeme_values
        (many (skipThen (symbol ",") enum_lexeme_values))
      ])
  );

  noiseParams =
    dim:
    skipThen (symbol "noise_params_${dim}") (
      fmap
        (
          val:
          let
            offset = elemAt val 0;
            scale = elemAt val 1;
            spread = elemAt val 2;
            seed = elemAt val 3;
            octaves = elemAt val 4;
            persistence = elemAt val 5;
            lacunarity = elemAt val 6;
            defaultFlags = elemAt val 7;
          in
          {
            type = "noise_params_${dim}";
            inherit
              offset
              scale
              spread
              seed
              octaves
              persistence
              lacunarity
              defaultFlags
              ;
          }
        )
        (sequence [
          (thenSkip float_lexeme (symbol ",")) # offset
          (thenSkip float_lexeme (symbol ",")) # scale
          (thenSkip v3f_value (symbol ",")) # spread
          (thenSkip float_lexeme (symbol ",")) # seed
          (thenSkip float_lexeme (symbol ",")) # octaves
          (thenSkip float_lexeme (symbol ",")) # persistence
          float_lexeme # lacunarity
          (
            option [ ]
            <| skipThen (symbol ",") (
              fmap
                (
                  val:
                  [
                    (head val)
                  ]
                  ++ (elemAt val 1)
                )
                (sequence [
                  enum_lexeme_values
                  (many (skipThen (symbol ",") enum_lexeme_values))
                ])
            )
          )
        ])
    );

  v3f_value =
    fmap
      (val: {
        type = "v3f";
        default = {
          x = elemAt val 0;
          y = elemAt val 2;
          z = elemAt val 4;
        };
      })
      (
        parens
        <| sequence [
          float_lexeme
          (symbol ",")
          float_lexeme
          (symbol ",")
          float_lexeme
        ]
      );
  v3f = skipThen (symbol "v3f") v3f_value;

  type = choice [
    int
    bool
    string
    float
    enum
    path
    filepath
    key
    flags
    (noiseParams "2d")
    (noiseParams "3d")
    v3f
  ];

  context =
    choice
    <| map (e: symbol e) [
      "common"
      "client"
      "server"
      "world_creation"
    ];

  description = fmap (
    val:
    let
      req = parsec.runParser requirements (lib.lists.last val);
    in
    if val == [ ] || req.type != "success" then
      {
        description = builtins.concatStringsSep "\n" val |> lib.trim;
        # requirements = { };
      }
    else
      {
        description = builtins.concatStringsSep "\n" (lib.lists.init val) |> lib.trim;
        requirements = req.value;
      }
  ) (many commentLine);

  setting =
    fmap (val: {
      type = "setting";
      content =
        let
          description = elemAt val 0;
          name = elemAt val 1;
          readableName = elemAt val 2;
          context = elemAt val 3;
          type = elemAt val 4;
        in
        type
        // description
        // {
          inherit name readableName;
          __toString =
            self:
            "${
              if hasAttr "description" self && self.description != "" then
                "# ${replaceStrings [ "\n" ] [ "\n# " ] self.description}\n"
              else
                ""
            }${
              if hasAttr "requirements" self then "# Requires: ${self.requirements}\n" else ""
            }${self.name} (${self.readableName})${
              if hasAttr "context" self then " [${self.context}]" else ""
            } ${self.__toStringType self}";
        }
        // (if context == null then { } else { inherit context; });
    })
    <| thenSkip (sequence [
      description
      name
      (parens readableName)
      (option null (brackets context))
      type
    ]) (many1 <| symbol "\n");

  requirements = skipThen (symbol "Requires:") (
    (fmap
      (
        val:
        (
          map (req: {
            name = elemAt req 1;
            value = head req != "!";
          }) val
          |> listToAttrs
        )
        // {
          __toString =
            self:
            builtins.concatStringsSep " " (
              map (r: "${if r.value then "" else "!"}${r.name}") (
                lib.attrsToList self |> builtins.filter (r: r.name != "__toString")
              )
            );
        }
      )
      (
        many (sequence [
          (option null (symbol "!"))
          name
          (option null (symbol ","))
        ])
      )
    )
  );

  commentLine = skipThen (symbol "#") (thenSkip (takeWhile (c: c != "\n")) (symbol "\n"));

  comment = thenSkip (many commentLine) (many1 (symbol "\n"));

  categoryHeading =
    level:
    fmap (
      val:
      let
        name = val |> head |> lib.last;
      in
      {
        inherit name;
      }
      // (if lib.last val == null then { } else { context = lib.last val; })
    )
    <| thenSkip (sequence [
      (brackets (sequence [
        (symbol (concatStringsSep "" (lib.replicate level "*")))
        categoryName
      ]))
      (option null (brackets context))
    ]) (many1 (symbol "\n"));

  formatGroup =
    val:
    val
    |> filter (e: isAttrs e && hasAttr "type" e)
    |> groupBy (getAttr "type")
    |> (
      e:
      {
        __toString =
          self:
          "${
            if hasAttr "name" self then
              "[${self.name}]${if hasAttr "context" self then " [${self.context}]" else ""}"
            else
              ""
          }${
            if hasAttr "settings" self then
              builtins.map (s: "${s}") self.settings |> concatStringsSep "\n\n"
            else
              ""
          }${
            if hasAttr "categories" self then
              "${builtins.map (cat: "${cat}") self.categories |> concatStringsSep "\n\n"}"
            else
              ""
          }";
      }

      // (
        if hasAttr "category" e then
          {
            categories = (
              e.category
              |> map (
                c:
                removeAttrs c [
                  "type"
                  "content"
                ]
                // c.content
              )

            );
          }
        else
          { }
      )
      // (
        if hasAttr "setting" e then
          {
            settings = e.setting |> map (s: s.content);
          }
        else
          { }
      )

    );

  category =
    level:
    fmap
      (
        val:
        {
          type = "category";
          content = val |> tail |> head |> formatGroup;
        }
        // head val
      )
      (sequence [
        (categoryHeading level)
        (many (choice [
          setting
          (category (level + 1))
          comment
        ]))
      ]);

  settingTypesFile = thenSkip (fmap formatGroup (
    many (choice [
      (category 0)
      setting
      comment
    ])
  )) eof;

in

(parsec.runParser settingTypesFile <| "${input}\n").value
