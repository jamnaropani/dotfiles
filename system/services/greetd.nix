{
  config,
  lib,
  ...
}: {
  # Greetd
  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = default_session;
      default_session = {
        command = "${lib.getExe config.programs.uwsm.package} start hyprland-uwsm.desktop";
        user = "marika";
      };
    };
  };
}
