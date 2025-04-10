{pkgs, ...}: {
  # Fuzzel
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = "SauceCodePro Nerd Font:size=12:style=SemiBold";
        prompt = "\" \"";
        placeholder = "What do you want to run?";
        terminal = "foot";
        icon-theme = "Papirus-Dark";
        lines = 8;
        width = 70;
        horizontal-pad = 30;
        vertical-pad = 15;
        inner-pad = 10;
        line-height = 25;
      };
      colors = {
        background = "2e3440ff";
        text = "d8dee9ff";
        prompt = "8fbcbbff";
        placeholder = "4c566aff";
        input = "d8dee9ff";
        match = "8fbcbbff";
        border = "8fbcbbff";
        selection = "3b4252ff";
        selection-text = "d8dee9ff";
        selection-match = "8fbcbbff";
      };
      border = {
        width = 2;
        radius = 2;
      };
    };
  };

  # Additional packages
  home.packages = with pkgs; [
    papirus-nord
  ];
}
