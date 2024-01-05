{ libs, pkgs, ... }:

{

  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      jetbrains-mono
    ];
  };

}
