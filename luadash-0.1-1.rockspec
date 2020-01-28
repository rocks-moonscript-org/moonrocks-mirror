package = "luadash"
version = "0.1-1"
source = {
  url = "https://gitlab.com/INdek/luadash.git"
}
description = {
  summary = "A lodash like module for lua",
  detailed = [[
    A lodash like module for lua
  ]],
  homepage = "https://gitlab.com/INdek/luadash",
  license = "MIT",
	maintainer = "Afonso Bordado"
}
dependencies = {
  "lua >= 5.1, < 5.5"
}
build = {
  type = "builtin",
	modules = {
		luadash = "luadash.lua",
	}
}
