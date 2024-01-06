{ lib, ... }:

{

  imports = [

    ./configuration.nix
    ./greetd.nix
    # ./impermanence.nix

    ../common/fonts.nix
    ../common/proxy.nix

  ];

}
