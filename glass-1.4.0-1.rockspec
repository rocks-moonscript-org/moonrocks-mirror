package = "glass"
version = "1.4.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/glass",
   tag = "v1.4.0"
}
description = {
   summary = "A library to load configuration files by accessing tables",
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
      ["glass.csv"] = "glass/csv.lua",
      ["glass.discount"] = "glass/discount.lua",
      ["glass.environment"] = "glass/environment.lua",
      ["glass.error"] = "glass/error.lua",
      ["glass.fennel"] = "glass/fennel.lua",
      ["glass.json"] = "glass/json.lua",
      ["glass.lua"] = "glass/lua.lua",
      ["glass.raw"] = "glass/raw.lua",
      ["glass.skooma.html"] = "glass/skooma/html.lua",
      ["glass.skooma.xml"] = "glass/skooma/xml.lua",
      ["glass.table"] = "glass/table.lua",
      ["glass.yaml"] = "glass/yaml.lua"
   }
}
