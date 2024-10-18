
if status --is-login
    exec Hyprland
end

if status is-interactive
    pfetch
    set fish_function_path $fish_function_path /usr/share/powerline/bindings/fish
    powerline-setup
end

set -g theme_nord_fonts yes
set -g theme_color_scheme dark
