{ config, pkgs, ...}:
let
  unstable = import <nixpkgs-unstable> {};
in
{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  services.xserver = {
    enable = true;
    displayManager.sddm.enable = true;
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";

    NIXOS_OZONE_WL = "1";
  };

  environment.systemPackages = with pkgs; [
    unstable.waybar
    unstable.hyprland
    wl-clipboard
    dunst
    libnotify
    swww
    kitty
    rofi-wayland
    networkmanagerapplet
    grim
    slurp
    imv
  ];

  hardware = {
    opengl.enable = true;
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
}

