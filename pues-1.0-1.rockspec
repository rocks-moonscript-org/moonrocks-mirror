package = "pues"
version = "1.0-1"
source = {
   url = "git+https://github.com/johron/pues",
   tag = "1.0-1"
}
description = {
   summary = "Project initializer and runner",
   homepage = "https://github.com/johron/pues",
   license = "GPL-3.0"
}
dependencies = {
   "lua>=5.4",
   "luafilesystem>=1.8.0-1",
   "lunajson>=1.2.3-1",
   "luazip>=1.2.5-1"
}
build = {
   type = "builtin",
   modules = {
      ["pues.command.config"] = "pues/command/config.lua",
      ["pues.command.create"] = "pues/command/create.lua",
      ["pues.command.exec"] = "pues/command/exec.lua",
      ["pues.command.help"] = "pues/command/help.lua",
      ["pues.command.license"] = "pues/command/license.lua",
      ["pues.command.manage"] = "pues/command/manage.lua",
      ["pues.util.io"] = "pues/util/io.lua",
      ["pues.util.json"] = "pues/util/json.lua",
      ["pues.util.misc"] = "pues/util/misc.lua"
   },
   install = {
      bin = {
         ["pues"] = "pues/main.lua"
      }
   },
   copy_directories = {
      "archives"
   }
}
