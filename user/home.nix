{pkgs, ...}: {
  imports = [
    ./gtk.nix
    ./programs
    ./services
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage
  home = {
    username = "marika";
    homeDirectory = "/home/marika";
  };

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;

  # Packages
  home.packages = with pkgs; [
    telegram-desktop
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";
}
