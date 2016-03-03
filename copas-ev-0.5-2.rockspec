package = "copas-ev"
version = "0.5-2"

source  = {
  url = "git://github.com/saucisson/lua-copas-ev.git",
  tag = "0.5",
}

description = {
  summary    = "Copas using lua-ev",
  detailed   = [[
    Copas-ev is a reimplementation of Copas using lua-ev.
  ]],
  license    = "MIT/X11",
  homepage   = "https://github.com/saucisson/lua-copas-ev",
  maintainer = "Alban Linard <alban@linard.fr>",
}

dependencies = {
   "copas     >= 2",
   "coronest  >= 1",
   "lua       >= 5.1",
   "lua-ev    >= v1",
   "luaposix  >= 33",
   "luasocket >= 2",
}

build = {
   type    = "builtin",
   modules = {
    ["copas.ev"] = "src/copas/ev.lua"
  }
}
