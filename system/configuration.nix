{
  modulesPath,
  pkgs,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")

    ./android.nix
    ./boot.nix
    ./filesystems.nix
    ./fonts.nix
    ./hardware
    ./l10n.nix
    ./networking.nix
    ./programs
    ./security
    ./services
  ];

  # Nix
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Nixpkgs
  nixpkgs = {
    hostPlatform = "x86_64-linux";
    config.allowUnfree = true;
  };

  # User account
  users.users.marika = {
    shell = pkgs.fish;
    isNormalUser = true;
    extraGroups = ["adbusers" "networkmanager" "wheel"];
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
