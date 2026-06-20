{
  config,
  pkgs,
  lib,
  ...
}:
{
  environment.pathsToLink = [ "/libexec" ];
  services.xserver = {
    enable = true;
    windowManager.i3.enable = true;
  };
  programs.dconf.enable = true;
  security.pam.services = {
    i3lock.enable = true;
    i3lock-color.enable = true;
    xlock.enable = true;
    xscreensaver.enable = true;
  };
}
