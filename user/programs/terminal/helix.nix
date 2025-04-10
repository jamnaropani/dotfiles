{pkgs, ...}: {
  # Helix
  programs.helix = {
    enable = true;
    defaultEditor = true;
    extraPackages = with pkgs; [nixd alejandra];
    ignores = ["!.gitignore"];
    settings = {
      theme = "nord";
    };
  };
}
