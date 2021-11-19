package = "Luaseq"
version = "1.1-1"
source = {
  url = "git://github.com/ImagicTheCat/Luaseq",
  tag = "1.1"
}

description = {
  summary = "An asynchronous helper library built on Lua coroutines.",
  detailed = [[
Luaseq is an asynchronous helper library built on coroutines. It can be used to perform asynchronous tasks in a "sequential" way.
  ]],
  homepage = "https://github.com/ImagicTheCat/Luaseq",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, <= 5.4"
}

build = {
  type = "builtin",
  modules = {
    Luaseq = "src/Luaseq.lua"
  }
}
