package = "ltypekit"
version = "3.2-1"

source  = {
  url   = "git://github.com/daelvn/ltypekit",
  tag   = "v3.2"
}

description = {
  summary  = "Advanced typechecker for Lua",
  detailed = [[
    This advanced type checking system supports function signatures,
    and has a custom type function that supports custom types.
  ]],
  homepage = "https://github.com/daelvn/ltypekit",
  license  = "MIT/X11"
}

dependencies = {
  "lua"
}

build = {
  type    = "builtin",
  modules = {
    ["ltypekit.init"]      = "ltypekit/init.lua",
    ["ltypekit.signature"] = "ltypekit/signature.lua",
    ["ltypekit.type"]      = "ltypekit/type.lua",
    ["ltypekit.util"]      = "ltypekit/util.lua",
    ["ltypekit.sign"]      = "ltypekit/sign.lua"
  },
}
