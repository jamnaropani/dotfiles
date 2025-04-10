{pkgs, ...}: {
  # Helix
  programs.helix = {
    enable = true;
    defaultEditor = true;
    extraPackages = with pkgs; [nixd alejandra];
    ignores = ["!.gitignore"];
    settings = {
      theme = "nord";
      editor = {
        auto-format = false;
        bufferline = "multiple";
        color-modes = true;
        cursorline = true;
        end-of-line-diagnostics = "hint";
        line-number = "relative";
        text-width = 100;
        lsp = {
          display-inlay-hints = true;
          display-progress-messages = true;
        };
        indent-guides = {
          render = true;
          character = "▏";
        };
        gutters.layout = ["diagnostics" "spacer" "line-numbers" "spacer"];
      };
    };
  };
}
