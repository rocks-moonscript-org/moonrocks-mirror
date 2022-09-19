package = "glass"
version = "1.1.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/glass",
   tag = "v1.1.0"
}
description = {
   homepage = "https://github.com/darkwiiplayer/glass",
   license = "Unlicense"
}
dependencies = {
   "luafilesystem"
}
build = {
   type = "builtin",
   modules = {
      glass = "glass.lua",
      ["glass.cosmo"] = "glass/cosmo.lua",
      ["glass.discount"] = "glass/discount.lua",
      ["glass.environment"] = "glass/environment.lua",
      ["glass.json"] = "glass/json.lua",
      ["glass.lua"] = "glass/lua.lua",
      ["glass.moonhtml"] = "glass/moonhtml.lua",
      ["glass.raw"] = "glass/raw.lua",
      ["glass.skooma"] = "glass/skooma.lua",
      ["glass.table"] = "glass/table.lua",
      ["glass.yaml"] = "glass/yaml.lua"
   }
}
