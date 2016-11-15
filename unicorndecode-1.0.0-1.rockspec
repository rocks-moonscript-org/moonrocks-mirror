package = "unicorndecode"
version = "1.0.0-1"
source = {
  url = "git://github.com/FourierTransformer/unicorndecode.git",
  tag = "1.0.0"
}
description = {
  summary = "Unidecode for Lua",
  detailed = [[
    This is a port of perl's Text::Unidecode written in Lua. It allows you to convert UTF-8 characters into similar-looking ASCII characters.
  ]],
  homepage = "https://github.com/FourierTransformer/unicorndecode",
  maintainer = "Shakil Thakur <shakil.thakur@gmail.com>",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
  type = "builtin",
  modules = {
    ["unicorndecode"] = "unicorndecode.lua",
    ["unidecode_data"] = "unidecode_data.lua",
  }
}