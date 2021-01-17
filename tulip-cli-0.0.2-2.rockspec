package = "tulip-cli"
version = "0.0.2-2"
rockspec_format = "3.0"
source = {
   url = "git+ssh://git@git.sr.ht/~mna/tulip-cli"
}
description = {
   summary = "Command-line assistant of the Lua web framework.",
   detailed = "Command-line assistant of the Lua web framework.",
   homepage = "https://git.sr.ht/~mna/tulip-cli",
   license = "BSD"
}
dependencies = {
   "lua >= 5.3, < 5.5",
   "mna/luapgsql	1.6.1-1",

   "base64 1.5-3",
   "luaposix 35.0-1",
   "luashell 0.4-1",
   "optparse 1.4-1",
   "xpgsql 0.5-1"
}
build = {
   type = "builtin",
   modules = {
      ["src.cmds"] = "src/cmds/init.lua",
      ["src.cmds.dbcmd"] = "src/cmds/dbcmd.lua",
      ["src.cmds.initcmd"] = "src/cmds/initcmd.lua",
      ["src.cmds.files.docker_compose"] = "src/cmds/files/docker_compose.lua",
      ["src.cmds.files.dockerfile"] = "src/cmds/files/dockerfile.lua",
      ["src.cmds.files.envrc"] = "src/cmds/files/envrc.lua",
      ["src.cmds.files.gitignore"] = "src/cmds/files/gitignore.lua",
      ["src.cmds.files.postgres_conf"] = "src/cmds/files/postgres_conf.lua",
      ["src.main"] = "src/main.lua",
      ["src.utils"] = "src/utils.lua",
   },
   install = {
      bin = {
         ["tulip-cli"] = "tulip-cli.lua"
      }
   }
}
