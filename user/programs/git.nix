{config, ...}: {
  # Git
  programs.git = {
    enable = true;
    userName = "jamnaropani";
    userEmail = "jamnaropani@gmail.com";
    signing = {
      key = "${config.home.homeDirectory}/.ssh/id_ed25519.pub";
      format = "ssh";
      signByDefault = true;
    };
    extraConfig = {
      init.defaultBranch = "master";
      push.autoSetupRemote = true;
    };
  };
}
