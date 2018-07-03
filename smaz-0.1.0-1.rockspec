package = "smaz"
version = "0.1.0-1"

description = {
   summary  = "A smaz compression library for Lua",
   detailed = "A Lua smaz library suitable for short strings compression",
   license  = "MIT",
   homepage = "https://github.com/oik741/lua-smaz"
}

source = {
   url = "https://github.com/Oik741/lua-smaz/archive/v0.1.0.tar.gz",
   md5 = "47898312153557b3be441378338e91b9",
   dir = "lua-smaz-0.1.0"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = 'builtin',
   modules = {
      smaz = "lib/smaz.lua"
   },
   copy_directories = { "test" }
}
