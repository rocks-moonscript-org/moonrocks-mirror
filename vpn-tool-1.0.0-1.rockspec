package = "vpn-tool"
version = "1.0.0-1"

source = {
   url = "git+https://github.com/jjjm03299-wq/improved-computing-machine.git"
}

description = {
   summary = "VPN Data Cleaner API command-line tool",
   detailed = "A Lua command-line client for the VPN Data Cleaner API.",
   homepage = "https://github.com/jjjm03299-wq/improved-computing-machine",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",

   modules = {},

   install = {
      bin = {
         ["vpn-tool"] = "vpn-tool.lua"
      }
   }
}
