{
  # Description
  description = "NixOS Configuration";

  # Inputs
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    pre-commit-hooks.url = "github:cachix/git-hooks.nix";
    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # Outputs
  outputs = {
    self,
    nixpkgs,
    home-manager,
    pre-commit-hooks,
    ...
  } @ inputs: let
    # Pre-commit check
    pre-commit-check = pre-commit-hooks.lib.x86_64-linux.run {
      src = ./.;
      hooks = {
        typos.enable = true;
        alejandra.enable = true;
      };
    };
  in {
    # NixOS configurations
    nixosConfigurations.home = nixpkgs.lib.nixosSystem {
      modules = [
        ./system/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = {inherit inputs;};
            users.marika = import ./user/home.nix;
          };
        }
      ];
    };

    # Checks
    checks.x86_64-linux = {
      inherit pre-commit-check;
    };

    # Dev shells
    devShells.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.mkShell {
      name = "dotfiles";
      shellHook = pre-commit-check.shellHook;
      buildInputs = pre-commit-check.enabledPackages;
    };
  };
}
