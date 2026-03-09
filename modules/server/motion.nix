{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [ motion ];
  networking.firewall = {
    allowedTCPPorts = [ 8081 ];
  };
}
