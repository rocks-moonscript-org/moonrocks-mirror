package = "luacov-html"
version = "0.0.1-1"

description = {
  summary = "HTML Reporter for LuaCov",
  detailed = [[
    luacov-html is a Reporter for LuaCov that generates HTML files to visualize the code coverage.

    This is based on the html reporter from [luacov-multiple](https://github.com/to-kr/luacov-multiple).
  ]],
  license = "MIT",
  homepage = "https://github.com/wesen1/luacov-html"
}

source = {
  url = "git+https://github.com/wesen1/luacov-html.git",
  tag = "v0.0.1"
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
