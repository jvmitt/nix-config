{ pkgs, username, ... }:
let
  virtualisation_username = username;
in
{

  virtualisation = {
    libvirtd.enable = true;
    docker.rootless = {
      enable = true;
      setSocketVariable = true;
    };
    podman = {
      enable = true;
      dockerCompat = false;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

  environment.systemPackages = with pkgs; [
    qemu
    virt-manager
    freerdp
    winboat
    dive
    podman-tui
    docker-compose
    podman-compose
  ];

  users = {
    extraGroups.libvirtd.members = [ "${virtualisation_username}" ];
    extraGroups.kvm.members = [ "${virtualisation_username}" ];
    groups.docker = {
      gid = 131;
    };
  };
}
