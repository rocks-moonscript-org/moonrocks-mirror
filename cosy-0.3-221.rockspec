package = "cosy"
version = "0.3-221"
source = {
  url = "git://github.com/cosyverif/library"
}
description = {
  detailed = "",
  homepage = "http://www.cosyverif.org/",
  license = "MIT/X11",
  maintainer = "Alban Linard <alban@linard.fr>",
  summary = "CosyVerif"
}
dependencies = {
  "lua >= 5.2",
  "cosy-client",
  "amalg",
  "ansicolors",
  "argparse",
  "bcrypt",
  "copas-ev",
  "coronest",
  "dkjson",
  "hotswap",
  "hotswap-ev",
  "hotswap-http",
  "i18n",
  "jwt",
  "layeredata",
  "lua-cjson-ol",
  "lua-ev",
  "lua-resty-http",
  "lua-websockets",
  "luacrypto",
  "luafilesystem",
  "lualogging",
  "luaposix",
  "luasec",
  "luasocket",
  "lustache",
  "md5",
  "serpent"
}
build = {
  copy_directories = {
    "./src/cosy"
  },
  install = {
    bin = {
      ["cosy-check"] = "src/cosy/check/bin.lua",
      ["cosy-rockspec"] = "src/cosy/rockspec/bin.lua",
      ["cosy-server"] = "src/cosy/server/bin.lua"
    },
    conf = {}
  },
  modules = {},
  type = "builtin"
}
