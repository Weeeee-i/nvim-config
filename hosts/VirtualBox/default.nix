{ lib, ... }:

{

  imports = [

    ./configuration.nix
    ./greetd.nix

    ../common/fonts.nix
    ../common/proxy.nix

  ];

}
