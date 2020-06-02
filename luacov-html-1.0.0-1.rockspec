package = "luacov-html"
version = "1.0.0-1"

description = {
  summary = "HTML Reporter for LuaCov",
  detailed = [[
    luacov-html is a Reporter for LuaCov that generates HTML files to visualize the code coverage.

    This is based on the html reporter from luacov-multiple.
  ]],
  license = "MIT",
  homepage = "https://wesen1.github.io/luacov-html/"
}

source = {
  url = "git+https://github.com/wesen1/luacov-html.git",
  tag = "v1.0.0"
}

dependencies = {
  "lua >= 5.1",
  "classic = 0.1.0-1",
  "penlight >= 1.7.0-1",
  "luacov >= 0.14.0-1",
  "lua-resty-template >= 1.9-1"
}

build = {
  type = "command",
  install_command = "cp -r src/luacov $(LUADIR)/luacov"
}
