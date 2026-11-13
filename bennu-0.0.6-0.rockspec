package = "bennu"
version = "0.0.6-0"
source = {
   url = "https://codeberg.org/nimiux/bennu/releases/download/v0.0.6/bennu-v0.0.6.tar.gz",
   dir = "bennu-v0.0.6",
}
description = {
   summary = "Lua functions",
   detailed = [[
    Small framework for everyday work at a GNU/Linux system
  ]],
   homepage = "http://freeshell.de/nimiux",
   license = "Unlicense <http://unlicense.org>",
}
dependencies = {
   "ansicolors >= 1.0.2",
   "argparse 0.7.2-1",
   "fun >=0.1.3",
   "inspect >= 3.1.3",
   "lua >= 5.5",
   "lua-hash >= 0.1.1",
   "luaposix >= 38",
   "penlight >= 1.15.0",
   "say >= 1.4.1-3",
}
build = {
   type = "builtin",
   modules = {
      ["bennu.base"] = "src/base.lua",
      ["bennu.functional"] = "src/functional.lua",
      ["bennu.init"] = "src/init.lua",
      ["bennu.log"] = "src/log.lua",
      ["bennu.misc"] = "src/misc.lua",
      ["bennu.notify"] = "src/notify.lua",
      ["bennu.repos"] = "src/repos.lua",
      ["bennu.storage"] = "src/storage.lua",
      ["bennu.sys"] = "src/sys.lua",
      ["bennu.languages.en"] = "src/languages/en.lua",
      ["bennu.languages.es"] = "src/languages/es.lua",
   },
}
