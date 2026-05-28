local package_version = "0.1.0"
local rockspec_revision = "1"

rockspec_format = "3.0"
package = "moonshine"
version = package_version .. "-" .. rockspec_revision
source = {
  url = "git://github.com/f4z3r/moonshine.git",
  tag = "v" .. package_version,
}
description = {
  summary = "A library to make CLIs beautiful.",
  detailed = [[
     A library enabling you to write beautiful CLI applications. This grows mostly
     from my own need for features that I use in CLIs, but its long term vision is
     to provide features similiar to https://github.com/charmbracelet/bubbles.
   ]],
  homepage = "https://github.com/f4z3r/moonshine/tree/main",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1, < 5.4",
  "lanes >= 3.16",
  "luaposix >= 34",
}
test_dependencies = {
  "busted >= 2.2",
  "luatext >= 1.2",
}
test = {
  type = "busted",
}
build = {
  type = "builtin",
  modules = {
    ["moonshine"] = "./moonshine/init.lua",
    ["moonshine.prompt"] = "./moonshine/prompt.lua",
    ["moonshine.spinner"] = "./moonshine/spinner.lua",
    ["moonshine.utils"] = "./moonshine/utils.lua",
  },
}
