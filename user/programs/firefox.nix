{inputs, ...}: {
  # Firefox
  programs.firefox = {
    enable = true;
    profiles.me = {
      isDefault = true;
      settings = {
        # Auto enable extensions
        "extensions.autoDisableScopes" = 0;
      };
      extensions.packages = with inputs.firefox-addons.packages.x86_64-linux; [
        ublock-origin
        sponsorblock
      ];
    };
  };
}
