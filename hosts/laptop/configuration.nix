{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:
{

  networking.hostName = "nixos";

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  imports = [
    ./hardware-configuration.nix
  ];

  # Host specific tweaks
  hardware.nvidia.prime = {
    intelBusId = "PCI:0:2:0";
    nvidiaBusId = "PCI:1:0:0";
  };

  system = {
    copySystemConfiguration = false;
    stateVersion = "24.11"; # Did you read the comment?
  };

}
