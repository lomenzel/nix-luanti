lib: {
  simpleSetting = {
    expr = lib.fromSettingtypes ''
      cool_setting (The Coolest SETTING) int 2 1
    '';
    expected = {
      settings = [
        {
          name = "cool_setting";
          readableName = "The Coolest SETTING";
          description = "";
          type = "int";
          requirements = { };
          default = 2;
          min = 1;
        }
      ];
    };
  };
}
