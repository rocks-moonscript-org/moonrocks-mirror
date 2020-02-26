package = "luadash"
version = "0.2.0-1"
source = {
  url = "https://gitlab.com/INdek/luadash"
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
		luadash = {
      'luadash.lua',
      '_math.lua',
      '_string.lua',
      'number.lua',
      'predicates.lua',
      'seq.lua',
      'util.lua',
      'function.lua',
      'lang.lua',
    }
  },
  copy_directories = { 'docs' }
}
