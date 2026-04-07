{ pkgs, username, ... }:
{

  programs.bash = {
    enable = true;
    shellAliases = {
      # A test rebuild is needed as a workaround for making SOPS cache be used in the real rebuild.
      rebuild-laptop = "sudo su && sudo nixos-rebuild test --flake /home/${username}/nix-config/.#laptop && sudo nixos-rebuild switch --flake /home/${username}/nix-config/.#laptop && su ${username}";
      rebuild-server = "sudo su && sudo nixos-rebuild test --flake /home/${username}/nix-config/.#server && sudo nixos-rebuild switch --flake /home/${username}/nix-config/.#server && su ${username}";
    };
  };

}
