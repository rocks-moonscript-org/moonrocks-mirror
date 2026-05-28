package = "background-remover"
version = "0.1.0-1"
source = {
   url = "file:///Volumes/不晚/web出海网站/高质量软件包外链/background_remover_luarocks/background-remover-0.1.0.tar.gz"
}
description = {
   summary = "Minimal LuaRocks package for Background Remover tool page metadata.",
   detailed = [[
Minimal metadata package for the Background Remover tool page.
   ]],
   homepage = "https://www.seedance2ai.app/tools/background-remover",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["background_remover"] = "background_remover.lua"
   }
}
