let
  # Path to wallpaper
  wallpaper = ../../wallpapers/minimal.png;
in {
  # Hyprpaper
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;
      preload = ["${wallpaper}"];
      wallpaper = ["HDMI-A-1,${wallpaper}"];
    };
  };
}
