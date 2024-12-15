
{ config, lib, pkgs, modulesPath, ... }:
{
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
    };

    
    environment.sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
    };

    hardware = {
        opengl.enable = true;
        nvidia.modesetting.enable = true;
    };

    xdg.portal.enable = true;
    xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

}
