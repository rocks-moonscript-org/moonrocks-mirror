package = "ltypekit"
version = "6.0.1-1"
source = {
   url = "git://github.com/daelvn/ltypekit",
   tag = "v6.0.1"
}
description = {
   summary = "Advanced typechecker for Lua",
   detailed = [[
    This advanced type checking system supports function signatures,
    and has a custom type function that supports custom types.
  ]],
   homepage = "https://github.com/daelvn/ltypekit",
   license = "MIT/X11"
}
dependencies = {
   "lua"
}
build = {
   type = "builtin",
   modules = {
      ["ltypekit.init"] = "ltypekit/init.lua",
      ["ltypekit.sign"] = "ltypekit/sign.lua",
      ["ltypekit.signature"] = "ltypekit/signature.lua",
      ["ltypekit.type"] = "ltypekit/type.lua",
      ["ltypekit.types.Char"] = "ltypekit/types/Char.lua",
      ["ltypekit.util"] = "ltypekit/util.lua"
   }
}
