{
  # Fish
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      # Disable fish greeting
      set fish_greeting

      # Enable vi key bindings
      fish_vi_key_bindings

      # Set insert mode cursor to block
      set fish_cursor_insert block
    '';
  };
}
