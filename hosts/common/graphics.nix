{ libs, pkgs, ...}:

{

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
    # extraOackages = with pkgs; [
    # ];
  };

}
