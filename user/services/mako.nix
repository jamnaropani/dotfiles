{pkgs, ...}: {
  # Mako
  services.mako = {
    enable = true;
    anchor = "top-right";
    backgroundColor = "#2e3440";
    borderColor = "#8fbcbb";
    borderRadius = 2;
    borderSize = 2;
    defaultTimeout = 5000;
    font = "SauceCodePro Nerd Font SemiBold 10.8";
    margin = "3,8";
    padding = "12,15";
    progressColor = "#8fbcbb";
    textColor = "#d8dee9";
  };

  # Additional packages
  home.packages = with pkgs; [
    libnotify
  ];
}
