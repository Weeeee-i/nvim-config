{ lib, ... }:

{

  imports = [

    ./configuration.nix
    ./greetd.nix
    # ./impermanence.nix

    ../common/fonts.nix
    ../common/proxy.nix
    ../common/graphics.nix
    ../common/polkit.nix
    ../common/xdg.nix
    ../common/auto_clean.nix

  ];

}
