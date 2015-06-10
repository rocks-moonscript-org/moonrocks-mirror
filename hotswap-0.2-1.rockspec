package = "hotswap"
version = "0.2-1"

source = {
  url = "git://github.com/saucisson/lua-hotswap",
  tag = "0.2",
}

description = {
  summary     = "Replacement for 'require' that allows hotswapping",
  detailed    = [[]],
  license     = "MIT/X11",
  maintainer  = "Alban Linard <alban.linard@lsv.ens-cachan.fr>",
}

dependencies = {
  "compat53 >= 0",
}

build = {
  type    = "builtin",
  modules = {
    ["hotswap"     ] = "src/hotswap.lua",
    ["hotswap.hash"] = "src/hotswap/hash.lua",
    ["hotswap.ev"  ] = "src/hotswap/ev.lua",
    ["hotswap.lfs" ] = "src/hotswap/lfs.lua",
  },
}
