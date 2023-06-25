enable-recomended-vars:
 doas sed -i 's/#SDL_VIDEODRIVER=wayland/SDL_VIDEODRIVER=wayland/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/#_JAVA_AWT_WM_NONREPARENTING=1/_JAVA_AWT_WM_NONREPARENTING=1/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/#QT_QPA_PLATFORM=wayland/QT_QPA_PLATFORM=wayland/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/#XDG_CURRENT_DESKTOP=sway/XDG_CURRENT_DESKTOP=sway/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/#XDG_SESSION_DESKTOP=sway/XDG_SESSION_DESKTOP=sway/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/#GDK_BACKEND="wayland,x11/GDK_BACKEND="wayland,x11t/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/#MOZ_ENABLE_WAYLAND=1/MOZ_ENABLE_WAYLAND=1/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/#QT_QPA_PLATFORMTHEME=qt5ct/QT_QPA_PLATFORMTHEME=qt5ct/g' /etc/profile.d/hyprgreenProfile.sh

disable-recomended-vars:
 doas sed -i 's/SDL_VIDEODRIVER=wayland/#SDL_VIDEODRIVER=wayland/g' /etc/profile.d/hyprgreenProfile.sh.d/hyprgreen
 doas sed -i 's/_JAVA_AWT_WM_NONREPARENTING=1/#_JAVA_AWT_WM_NONREPARENTING=1/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/QT_QPA_PLATFORM=wayland/#QT_QPA_PLATFORM=wayland/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/XDG_CURRENT_DESKTOP=sway/#XDG_CURRENT_DESKTOP=sway/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/XDG_SESSION_DESKTOP=sway/#XDG_SESSION_DESKTOP=sway/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/GDK_BACKEND="wayland,x11/#GDK_BACKEND="wayland,x11t/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/MOZ_ENABLE_WAYLAND=1/#MOZ_ENABLE_WAYLAND=1/g' /etc/profile.d/hyprgreenProfile.sh
 doas sed -i 's/QT_QPA_PLATFORMTHEME=qt5ct/#QT_QPA_PLATFORMTHEME=qt5ct/g' /etc/profile.d/hyprgreenProfile.sh

