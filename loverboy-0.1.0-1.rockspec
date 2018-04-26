package = "loverboy"
version = "0.1.0-1"

source = {
   url = "https://github.com/ngscheurich/loverboy"
}

description = {
   summary = "Download libraries to help with LÖVE development",
   homepage = "https://github.com/ngscheurich/loverboy",
   license = "MIT",
   labels = {"LÖVE", "love", "love2d", "libraries"}
}

dependencies = {
   "lua ~> 5.3",
   "lua_cliargs ~> 3",
   "luafilesystem ~> 1.7",
   "http ~> 0.2"
}

build = {
   type = "builtin",
   modules = {
      loverboy = "loverboy.lua"
   }
}
