package = "loverboy"
version = "0.1.0-1"

source = {
   url = "git://github.com/ngscheurich/loverboy.git",
   tag = "v0.1.0"
}

description = {
   summary = "💘 Add libraries to a LÖVE project.",
   detailed = [[
      Loverboy makes it easy to add Lua libraries to
      your LÖVE project with a simple set of commands.
      Library files are added directly to your project
      directory so distributing your game is a snap.
   ]],
   homepage = "https://github.com/ngscheurich/loverboy",
   license = "MIT"
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
      loverboy = "src/loverboy.lua",
      ["loverboy.add"] = "src/loverboy/add.lua",
      ["loverboy.info"] = "src/loverboy/info.lua",
      ["loverboy.search"] = "src/loverboy/search.lua",
      ["loverboy.util"] = "src/loverboy/util.lua"
   },
   install = {
      bin = {"bin/loverboy"}
   }
}
