{
  # File systems
  fileSystems = {
    # Root
    "/" = {
      fsType = "ext4";
      device = "/dev/disk/by-label/NIXOS";
    };

    # Boot
    "/boot" = {
      fsType = "vfat";
      device = "/dev/disk/by-label/ESP";
      options = ["fmask=0077" "dmask=0077"];
    };

    # Home
    "/home" = {
      fsType = "ext4";
      device = "/dev/disk/by-label/HOME";
    };
  };
}
