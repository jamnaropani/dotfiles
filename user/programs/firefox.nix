{
  inputs,
  lib,
  ...
}: {
  # Firefox
  programs.firefox = {
    enable = true;
    profiles.me = {
      isDefault = true;
      settings = {
        # Disable irritating first-run stuff
        "browser.disableResetPrompt" = true;
        "browser.download.panel.shown" = true;
        "browser.feeds.showFirstRunUI" = false;
        "browser.messaging-system.whatsNewPanel.enabled" = false;
        "browser.rights.3.shown" = true;
        "browser.shell.checkDefaultBrowser" = false;
        "browser.shell.defaultBrowserCheckCount" = 1;
        "browser.startup.homepage_override.mstone" = "ignore";
        "browser.uitour.enabled" = false;
        "startup.homepage_override_url" = "";
        "trailhead.firstrun.didSeeAboutWelcome" = true;
        "browser.bookmarks.restore_default_bookmarks" = false;
        "browser.bookmarks.addedImportButton" = true;

        # Disable crappy home activity stream page
        "browser.newtabpage.activity-stream.feeds.topsites" = false;
        "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
        "browser.newtabpage.activity-stream.improvesearch.topSiteSearchShortcuts" = false;
        "browser.newtabpage.blocked" = lib.genAttrs [
          # Youtube
          "26UbzFJ7qT9/4DhodHKA1Q=="
          # Facebook
          "4gPpjkxgZzXPVtuEoAL9Ig=="
          # Wikipedia
          "eV8/WsSLxHadrTL1gAxhug=="
          # Reddit
          "gLv0ja2RYVgxKdp0I5qwvA=="
          # Amazon
          "K00ILysCaEq8+bEqV/3nuw=="
          # Twitter
          "T9nJot5PurhJSy8n038xGA=="
        ] (_: 1);

        # Layout
        "browser.uiCustomization.state" = builtins.toJSON {
          currentVersion = 21;
          newElementCount = 2;
          dirtyAreaCache = ["nav-bar" "PersonalToolbar" "toolbar-menubar" "TabsToolbar" "widget-overflow-fixed-list"];
          placements = {
            PersonalToolbar = ["personal-bookmarks"];
            TabsToolbar = ["tabbrowser-tabs" "new-tab-button" "alltabs-button"];
            nav-bar = ["back-button" "forward-button" "stop-reload-button" "urlbar-container" "downloads-button" "unified-extensions-button"];
            toolbar-menubar = ["menubar-items"];
            unified-extensions-area = [];
            widget-overflow-fixed-list = [];
          };
          seen = ["save-to-pocket-button" "developer-button" "ublock0_raymondhill_net-browser-action" "sponsorblocker_ajay_app-browser-action"];
        };

        # Auto enable extensions
        "extensions.autoDisableScopes" = 0;
      };
      extensions.packages = with inputs.firefox-addons.packages.x86_64-linux; [
        ublock-origin
        sponsorblock
      ];
    };
  };
}
