{
  pkgs,
  config,
  system,
  inputs,
  ...
}:
{

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.packageOverrides = pkgs: {
    unstable = import <nixos-unstable> { config = config.nixpkgs.config; };
  };

  environment.systemPackages = with pkgs; [

    # Sem Categoria
    wine
    wayvnc
    gnupg
    vlc
    mpv
    pavucontrol
    winetricks
    inav-configurator

    inputs.zen-browser.packages."${system}".twilight
    signal-desktop
    webcord

    # Terminal
    fastfetch
    btop
    powertop
    lm_sensors
    #cowsay
    #fortune
    #cbonsai
    #cmatrix
    #asciiquarium
    wget

    # Arquivos
    nautilus
    yazi
    gvfs
    glib
    udiskie
    gnome-disk-utility
    rar
    unrar
    zip
    unzip
    gnutar
    xz
    gzip
    gpa

    # Produtividade
    obsidian
    anki-bin
    #libreoffice

    # Dev
    arduino
    nasm
    openssl
    pkg-config
    docker
    jdk
    jdk8
    openjdk8
    jdk11
    jdk21
    openjfx21
    #openjfx11
    #openjfx8
    webkitgtk_6_0
    git
    probe-rs-tools
    rustup
    rustc
    cargo
    gcc
    scrcpy
    python3
    python3Packages.matplotlib
    #android-tools
    #android-studio

    # 3D & 2D
    freecad-wayland
    #librecad
    #cura-appimage
    orca-slicer
    #inkscape
    #blender
    kicad

  ];
}
