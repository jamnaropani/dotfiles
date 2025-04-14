{
  # Boot
  boot = {
    kernelModules = [];
    extraModulePackages = [];
    initrd = {
      kernelModules = [];
      availableKernelModules = ["nvme" "xhci_pci" "ahci" "usbhid" "sd_mod"];
    };
    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = true;
      };
    };
  };
}
