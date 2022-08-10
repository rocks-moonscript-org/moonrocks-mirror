package = "glass"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/glass",
   tag = "v1.0.0"
}
description = {
   homepage = "https://github.com/darkwiiplayer/glass",
   license = "Unlicense"
}
dependencies = {
   "lfs"
}
build = {
   type = "builtin",
   modules = {
      glass = "glass.lua",
      ["glass.cosmo"] = "glass/cosmo.lua",
      ["glass.discount"] = "glass/discount.lua",
      ["glass.json"] = "glass/json.lua",
      ["glass.lua"] = "glass/lua.lua",
      ["glass.moonhtml"] = "glass/moonhtml.lua",
      ["glass.moonhtml_cosmo"] = "glass/moonhtml_cosmo.lua",
      ["glass.raw"] = "glass/raw.lua",
      ["glass.skooma"] = "glass/skooma.lua",
      ["glass.yaml"] = "glass/yaml.lua"
   }
}
