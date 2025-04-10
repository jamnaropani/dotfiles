let
  # Font family
  font = "SauceCodePro Nerd Font";

  # Font size
  size = "10.8";
in {
  # Foot
  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "${font}:size=${size}:style=SemiBold";
        font-bold = "${font}:size=${size}:style=Bold";
        font-italic = "${font}:size=${size}:style=SemiBold Italic";
        font-bold-italic = "${font}:size=${size}:style=Bold Italic";
        line-height = 17;
        underline-offset = 17;
      };
    };
  };
}
