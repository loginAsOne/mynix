{ config, pkgs, ...}:
let  
in {                                                                                 
  environment.systemPackages = with pkgs; [                                       
    dolphin                                                                          
    dunst                                                                            
    kitty                                                                            
    libnotify                                                                        
    networkmanagerapplet                                                             
    rofi-wayland                                                                     
    swww                                                                             
    wlogout

    swaylock-effects

    sdbus-cpp

    waybar

  ];


  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;

  environment.sessionVariables = {                                                   
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";                                                            
  };

  security.pam.services.swaylock = {};

  hardware = {
    opengl.enable = true;
  };
                                                                                     
  fonts.fonts = with pkgs; [
    font-awesome
    nerdfonts
  ];

  sound.enable = true;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = with pkgs; [
    xdg-desktop-portal-hyprland
  ];
}
