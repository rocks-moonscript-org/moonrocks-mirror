package = "LuaFruits"
version = "1.0-1"
source = {
   url = "git://github.com/horan-geeker/lua-orm",
   tag = "v1.0",
}
description = {
   summary = "An example for the LuaRocks tutorial.",
   detailed = [[
      This is an example for the LuaRocks tutorial.
      Here we would put a detailed, typically
      paragraph-long description.
   ]],
   homepage = "https://github.com/horan-geeker/lua-orm",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "luaknife >= 2.3"
}
external_dependencies = {
   LIBDATE = {
      header = "libdate.h"
   }
}
build = {
   type = "builtin",
   modules = {
      apricot = "src/apricot.lua",
      ["apricot.seeds"] = "src/apricot/seeds.lua",
      banana = "src/banana.c",
      cherry = {"src/cherry.c", "src/cherry_pie.c"},
      date = {
         sources = {"src/date.c", "src/cali_date.c", "src/arab_date.c"},
         defines = {"MAX_DATES_PER_MEAL=50"},
         libraries = {"date"},
         incdirs = {"$(LIBDATE_INCDIR)"},
         libdirs = {"$(LIBDATE_LIBDIR)"}
      }
   },
   copy_directories = { "doc", "test" }
}
