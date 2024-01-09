{ libs, pkgs, ... }:

{

  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      sarasa-gothic
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    ];

    fontconfig.defaultFonts = {
      serif = [ "Noto Serif CJK SC" ];
      sansSerif = [ "Sarasa UI SC" "Noto Sans CJK SC" ];
      monospace = [ "Sarasa Mono SC" "Noto Sans CJK SC" "JetBrainsMono NFT" ];
    };

  };

}
