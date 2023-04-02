#!/bin/bash

PS3="Select Theme: "

select theme in catppuccin everforest gruvbox
do 

#waybar
killall -q waybar
cp ~/.config/waybar/$theme ~/.config/waybar/config
cp ~/.config/waybar/$theme.css ~/.config/waybar/bar.css

#hyprland colors + wallpaper
cp ~/.config/hypr/themes/colors/$theme.conf ~/.config/hypr/colors.conf

#alacritty
cp ~/.config/alacritty/$theme.yml ~/.config/alacritty/alacritty.yml

#wofi
cp ~/.config/wofi/$theme.css ~/.config/wofi/menu.css

#nvim
echo "
    local colorscheme = '$theme'

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not status_ok then
  return
end
" > ~/.config/nvim/lua/user/colorscheme.lua
done
