lib: {
  simpleSetting = {
    expr =
      lib.fromSettingtypes ''
        # comment

        #   Description line 1
        #     Description line 2
        #   Requires: other_setting
        setting (Simple Setting) [client] int 1

      '' {
        setting.default = 2;
        settingThatDoesNotExist.default = true;
      }
      |> builtins.toString;
    expected = ''
      # Description line 1
      # Description line 2
      # Requires: other_setting
      setting (Simple Setting) [client] int 2
    '';
  };
}
