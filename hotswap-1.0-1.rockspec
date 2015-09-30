package = "hotswap"
version = "1.0-1"

source = {
  url = "git://github.com/saucisson/lua-hotswap",
  tag = "1.0",
}

description = {
  summary    = "Replacement for 'require' that allows hotswapping",
  detailed   = [[]],
  license    = "MIT/X11",
  maintainer = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type    = "builtin",
  modules = {
    ["hotswap"     ] = "src/hotswap/init.lua",
    ["hotswap.hash"] = "src/hotswap/hash.lua",
    ["hotswap.ev"  ] = "src/hotswap/ev.lua",
    ["hotswap.lfs" ] = "src/hotswap/lfs.lua",
  },
}
