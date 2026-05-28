rockspec_format = "3.0"
package = "luarandlib"
version = "0.1.0-1"
source = {
   url = "git+ssh://git@github.com/JoenTNT/luarandlib",
   tag = "v0.1.0"
}
description = {
   summary = "A single scripted Lua Random Library where you can Copy and Paste the file into your project.",
   homepage = "https://github.com/JoenTNT/luarandlib",
   license = "GNU GPLv3",
   maintainer = "JoenTNT"
}
dependencies = {
   "lua >= 5.1",
   "bit32"
}
build_dependencies = {
}
build = {
   type = "builtin",
   modules = {
      ["luarandlib"] = "src/luarandlib.lua"
   }
}
test_dependencies = {
   "lua >= 5.1",
   "bit32"
}
test = {
   type = "command",
   script = "src/tests/main_test.lua",
}