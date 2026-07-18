{ pkgs, ... }:
{
  services.xserver = {
    enable = true;
    displayManager.startx.enable = true;
    xkb = {
      layout = "br,us";
      model = "abnt2";
      options = "ctrl:nocaps,grp:ctrl_space_toggle";
    };
  };
  environment.systemPackages = with pkgs; [
    xinit
    xhost
    xauth
    xrandr
    xorg-server
    xterm
    i3status
    dmenu
  ];
}
