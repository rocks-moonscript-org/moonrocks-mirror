rockspec_format = "3.0"
package = "yalms"
version = "0.0.2-1"

source = {
  url = "git://github.com/ar-at-localhost/yalms",
  tag = "v0.0.2",
}

description = {
  summary = "A library of reusable Lua modules and Neovim plugins for developer experience",
  detailed = "Yalms is a library of reusable Lua modules and high-value Neovim plugins oriented towards user and developer experience. Upcoming plugins include Nixvim Manager to manage Nixvim instances, Orgonomic to enhance Nvim orgmode, NeoForms to build forms as a buffer, NeoProcess to create and run (visualize) recipes and more. The library will keep growing as new modules are added.",
  homepage = "https://github.com/ar-at-localhost/yalms",
  license = "GPL-3.0",
}

dependencies = {
  "lua >= 5.1",
}

test_dependencies = {
  "busted >= 2.0",
  "dkjson >= 2.5",
}

build = {
  type = "builtin",
  modules = {
    ["yalms"] = "lua/yalms/init.lua",
    ["yalms.env"] = "lua/yalms/env.lua",
    ["yalms.fs"] = "lua/yalms/fs.lua",
    ["yalms.json"] = "lua/yalms/json.lua",
    ["yalms.str"] = "lua/yalms/str.lua",
    ["yalms.tbl"] = "lua/yalms/tbl.lua",
    ["yalms.time"] = "lua/yalms/time.lua",
  },
}
