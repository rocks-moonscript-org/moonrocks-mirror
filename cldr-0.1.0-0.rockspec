rockspec_format = "1.0"
package = "cldr"
version = "0.1.0-0"

source = {
   url = "git://github.com/alerque/cldr-lua.git",
   tag = "v0.1.0",
   dir = "cldr-lua"
}

description = {
   summary = "Unicode CLDR data and Lua interface",
   detailed = [[
     Unicode CLDR (Common Locale Data Repository) data and Lua interface.
   ]],
   license = "MIT/ICU",
   homepage = "https://github.com/alerque/cldr-lua",
   maintainer = "Caleb Maclennan <caleb@alerque.com>",
}

dependencies = {
   "lua >= 5.1",
   "penlight"
}

build = {
   type = "builtin",
   modules = {
      ["cldr.init"] = "cldr/init.lua",
      ["cldr.data.locales"] = "cldr/data/locales.lua",
   }
}
