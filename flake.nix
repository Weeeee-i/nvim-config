{
  description = "A template that shows all standard flake outputs";

  # nixConfig = {
  # substituters = [
  # cache mirror located in China
  # status: https://mirror.sjtu.edu.cn/
  # "https://mirror.sjtu.edu.cn/nix-channels/store"
  # status: https://mirrors.ustc.edu.cn/status/
  # "https://mirrors.ustc.edu.cn/nix-channels/store"

  # "https://cache.nixos.org"

  # nix community's cache server
  # "https://nix-community.cachix.org"
  # ];
  # trusted-public-keys = [
  # nix community's cache server public key
  # "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
  # ];
  # };

  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    impermanence.url = "github:nix-community/impermanence";

    anyrun = {
      url = "github:Kirottu/anyrun";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, home-manager, impermanence, anyrun, ... }@inputs: {

    nixosConfigurations = {

      "vbox" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [

          ./hosts/VirtualBox

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.wei = import ./home;
          }

        ];
      };

      "W" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./hosts/Laptop

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.wei = import ./home;
          }

          # impermanence.nixosModules.impermanence
        ];
      };
    };
  };

}
