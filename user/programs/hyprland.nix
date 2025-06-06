{pkgs, ...}: {
  # Hyprland
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$modShift" = "$mod SHIFT";

      # Environment variables
      env = [
        "XCURSOR_SIZE,16"
        "XCURSOR_THEME,Bibata-Modern-Classic"
      ];

      # Monitors
      monitor = [
        "eDP-1,disable"
        "HDMI-A-1,1920x1080@75,0x0,1"
      ];

      # General
      general = {
        layout = "dwindle";

        gaps_in = 2;
        gaps_out = 4;

        border_size = 2;
        "col.inactive_border" = "rgb(3b4252)";
        "col.active_border" = "rgb(8fbcbb)";
      };

      # Decoration
      decoration = {
        rounding = 2;
        blur.enabled = false;
        shadow.enabled = false;
      };

      # Animations
      animations = {
        enabled = true;
        animation = [
          "workspaces, 0"
          "windows, 1, 3, default, popin 87%"
          "global, 1, 3, default"
        ];
      };

      # Input
      input = {
        kb_options = "ctrl:nocaps";
      };

      # Dwindle
      dwindle = {
        force_split = 2;
      };

      # Misc
      misc = {
        disable_hyprland_logo = true;
        force_default_wallpaper = 0;
        disable_splash_rendering = true;
      };

      # Keybindings
      bind = [
        # Launch apps
        "$mod, B, exec, firefox"
        "$mod, Return, exec, foot"
        "$modShift, Return, exec, fuzzel"

        # Manage active window
        "$mod, Q, killactive"
        "$mod, F, togglefloating"

        # Switch to a workspace
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"

        # Move active window to a workspace
        "$modShift, 1, movetoworkspacesilent, 1"
        "$modShift, 2, movetoworkspacesilent, 2"
        "$modShift, 3, movetoworkspacesilent, 3"
        "$modShift, 4, movetoworkspacesilent, 4"
        "$modShift, 5, movetoworkspacesilent, 5"
        "$modShift, 6, movetoworkspacesilent, 6"

        # Move active window in a workspace
        "$modShift, H, movewindow, l"
        "$modShift, J, movewindow, d"
        "$modShift, K, movewindow, u"
        "$modShift, L, movewindow, r"

        # Move active window focus
        "$mod, H, movefocus, l"
        "$mod, J, movefocus, d"
        "$mod, K, movefocus, u"
        "$mod, L, movefocus, r"

        # Scroll through active workspaces
        "$mod, Comma, workspace, e-1"
        "$mod, Period, workspace, e+1"

        # Control volume
        "$mod, N, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        "$mod, M, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"

        # Reboot / Poweroff
        "$mod, X, exec, reboot"
        "$modShift, X, exec, poweroff"
      ];
    };
  };

  # Additional packages
  home.packages = with pkgs; [
    bibata-cursors
  ];
}
