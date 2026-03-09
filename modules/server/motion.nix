{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [ motion ];
  networking.firewall = {
    allowedTCPPorts = [
      8080
      8081
    ];
    allowedUDPPorts = [
      8080
      8081
    ];
  };
}
