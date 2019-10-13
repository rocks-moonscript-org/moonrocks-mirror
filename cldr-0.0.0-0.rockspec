package = "cldr"
version = "0.0.0-0"

source = {
   url = "git://github.com/alerque/cldr-lua",
}

description = {
   summary = "Unicode CLDR data and Lua interface.",
   detailed = [[Unicode CLDR (Common Locale Data Repository) data and Lua interface.]],
   homepage = "https://github.com/alerque/cldr-lua",
   license = "MIT/ICU"
}

dependencies = {
   "lua",
   "penlight"
}

build = {
   type = "builtin",
   modules = {
      ["cldr.init"] = "cldr/init.lua",
      ["cldr.data.locales"] = "cldr/data/locales.lua",
   }
}
