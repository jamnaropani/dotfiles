{
  config,
  lib,
  ...
}: {
  # Intel
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
