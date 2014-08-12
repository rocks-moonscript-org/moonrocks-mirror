package = "battery_status"
rockspec_format = "1.0"
version = "1.1-1"
source = {
   url = "git://github.com/svarogg/battery_status",
   tag = "v1.1-1"
}
description = {
   summary = "Battery status indicator.",
   detailed = [[
      A tiny app to display a battery status indicator
      for primitive window managers such as Awesome
   ]],
   homepage = "http://everythingisvoid.com/",
   license = "MIT/X11"
}
dependencies = {
   "lua ~> 5.1",
   "lgi ~> 0.7.2-1" ,
   "lrexlib-posix ~> 2.7.2-1",
   "luafilesystem ~> 1.6.2-2",
}
build = {
   type = "builtin",
   modules = {
      battery_status = "src/battery_status.lua"
   },
   copy_directories = {"src/battery_icons"},
   install = {
      bin = {"src/show_battery_status"}
   }
}