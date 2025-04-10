{pkgs, ...}: {
  # Fonts
  fonts = {
    enableDefaultPackages = false;
    packages = with pkgs; [
      # Sans (Serif)
      inter
      roboto
      libertinus
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji

      # Nerd Fonts
      nerd-fonts.sauce-code-pro
    ];
    fontconfig.defaultFonts = {
      serif = ["Libertinus Serif"];
      sansSerif = ["Inter"];
      monospace = ["SauceCodePro Nerd Font"];
      emoji = ["Noto Color Emoji"];
    };
  };
}
