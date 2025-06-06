{pkgs, ...}: {
  # GTK
  gtk = {
    enable = true;
    font = {
      name = "Inter";
      package = pkgs.inter;
    };
    theme = {
      name = "Nordic";
      package = pkgs.nordic;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-nord;
    };
    cursorTheme = {
      size = 16;
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
    };
  };
}
