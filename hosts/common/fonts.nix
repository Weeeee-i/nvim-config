{ libs, pkgs, ... }:

{

  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      jetbrains-mono
      fira-code-nerdfont
    ];

    fontconfig.defaultFonts = {
      serif = [ "Noto Serif CJK SC" ];
      sansSerif = [ "Noto Sans CJK SC" ];
      monospace = [ "JetBrains Mono" ];
    };

  };

}
