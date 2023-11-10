package = "wezterm_include_launch_items"
version = "1.0-1"
source = {
   url = "git://github.com/Doomwhite/wezterm_include_launch_items.lua.git"
}
description = {
   summary = "A Lua script to include launch items in WezTerm",
   detailed = "This script updates the launch_menu.lua file in WezTerm to include new menu items based on the directories in a specified path.",
   homepage = "github.com/Doomwhite/wezterm_include_launch_items.lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luafilesystem"
}
build = {
   type = "builtin",
   modules = {
      wezterm_include_launch_items = "wezterm_include_launch_items.lua"
   }
}
