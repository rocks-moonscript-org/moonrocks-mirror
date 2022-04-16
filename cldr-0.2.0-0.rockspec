rockspec_format = "1.0"
package = "cldr"
version = "0.2.0-0"

source = {
   url = "git+https://github.com/alerque/cldr-lua.git",
   dir = "cldr-lua",
   tag = "v0.2.0"
}

description = {
   summary = "Lua interface to Unicode CLDR data",
   detailed = [[Unicode CLDR (Common Locale Data Repository) data and Lua interface.]],
   license = "MIT/ICU",
   homepage = "https://github.com/alerque/cldr-lua",
}

dependencies = {
   "lua >= 5.1",
   "penlight"
}

build = {
   type = "builtin",
   modules = {
      ["cldr.init"] = "cldr/init.lua",
      ["cldr.data.locales"] = "cldr/data/locales.lua"
   }
}
