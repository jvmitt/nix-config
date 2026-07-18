{ pkgs, config, ... }:
{

  boot = {
    extraModulePackages = [ config.boot.kernelPackages.nvidia_x11 ];
    initrd.kernelModules = [ "nvidia" ];
  };
  services.xserver.videoDrivers = [
    "modesetting"
    "nvidia"
  ];

  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages32 = with pkgs.pkgsi686Linux; [
        mesa
      ];
    };
    nvidia = {
      modesetting.enable = false;
      powerManagement.enable = true;
      powerManagement.finegrained = true;
      open = true;
      nvidiaSettings = false;
      package = config.boot.kernelPackages.nvidiaPackages.stable;
      prime.offload = {
        enable = true;
        enableOffloadCmd = true;
      };
    };
  };

}
