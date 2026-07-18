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
    desktopManager = {
      xterm.enable = false;
    };
  };
  programs.dconf.enable = true;
  security.pam.services = {
    i3lock.enable = false;
    i3lock-color.enable = false;
    xlock.enable = false;
    xscreensaver.enable = false;
  };
}
