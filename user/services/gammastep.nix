{
  # Gammastep
  services.gammastep = {
    enable = true;
    provider = "geoclue2";
    temperature = {
      day = 4000;
      night = 4000;
    };
  };
}
