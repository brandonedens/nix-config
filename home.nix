{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "mbe";
  home.homeDirectory = "/home/mbe";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";

  home.packages = with pkgs; [

    # Editor
    neovim

    # Editor
    fortune

    # Shell
    zsh
    dunst
    starship

    # CLI
    htop
    skim
    du-dust
    bat
    exa
    fd
    ripgrep

    # Development
    gcc
    gdb
    gcc-arm-embedded
    openocd
    tokei

    # Chat
    discord
    weechat
    slack

    # Browsers
    firefox
    chromium

    # Media
    cmus
    vlc
    pavucontrol

    # Window Manager
    xss-lock
    i3lock-color
    feh
    lxappearance
    toilet

    # Graphics
    inkscape
    gimp

    # Other
    direnv
    nixfmt
    unzip
    nodejs
    clight
  ];

  programs.zsh = {
    enable = true;
    defaultKeymap = "emacs";
    initExtra = builtins.readFile ./zshrc.zsh;
    plugins = [
    ];
  };

  programs.firefox = {
    enable = true;
  };

  programs.git = {
    enable = true;
    userName = "Brandon Edens";
    userEmail = "brandonedens@gmail.com";
    signing = {
      key = "brandonedens@gmail.com";
      signByDefault = true;
    };
  };

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };

  programs.kitty = {
    enable = true;
    settings = {
      cursor = "#da70d6";
      cursor_text_color = "#111111";
      cursor_blink_interval = "1";
      cursor_stop_blinking_after = "15.0";
      foreground = "#dddddd";
      background = "#000000";
      background_opacity = "1.0";
      font_family = "Fira Code";
      bold_font = "Fira Code Bold";
      italic_font = "Hack Italic";
      bold_italic_font = "Hack Bold Italic";
      font_size = "12";

      color0   = "#444444";
      color8   = "#666666";
      color1   = "#d36265";
      color9   = "#ef8171";
      color2   = "#8eae61";
      color10  = "#a5f779";
      color3   = "#a7a15c";
      color11  = "#fff796";
      color4   = "#7a7ab0";
      color12  = "#4186be";
      color5   = "#963c59";
      color13  = "#ef9ebe";
      color6   = "#418179";
      color14  = "#71bebe";
      color7   = "#cccccc";
      color15  = "#ffffff";
    };
  };

  programs.rofi = {
    enable = true;
    font = "Fira Code 10";
    extraConfig = "rofi.config";
    theme = ./Arc-Dark.rasi;
  };

  services.lorri.enable = true;

  services.picom = {
    enable = true;
    experimentalBackends = true;

    blur = true;
    vSync = true;
    backend = "glx";
    shadow = true;
    extraOptions = ''
      glx-no-stencil = true;
      glx-no-rebind-pixmap = true;
      blur: {
        method = "gaussian";
        size = 8;
        deviation = 10.0;
      }
    '';
  };

  services.dunst = {
    enable = true;
    settings = rec {
      global = {
        markup = "full";
        format = "<big><b>%s</b></big>\\n%b";
        sort = false;
        alignment = "left";
        bounce_freq = 0;
        word_wrap = true;
        ignore_newline = false;
        geometry = "450x100-15+49";
        transparency = 10;
        separator_height = 2;
        padding = 12;
        horizontal_padding = 20;
        line_height = 3;
        separator_color = "frame";
        frame_width = 2;
        frame_color = "#EC5F67";

        show_indicators = false;

        icon_position = "left";
        max_icon_size = 60;
      };

      urgency_normal = {
        foreground = "#CDD3DE";
        background = "#101010";
        timeout = 6;
      };
      urgency_low = urgency_normal;
      urgency_critical = urgency_normal;
    };
  };
}
