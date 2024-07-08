-- ule-1.0-0.rockspec
package = "uriid1-lua-extensions"
version = "1.0-0"
source = {
  url = "git+https://github.com/uriid1/uriid1-lua-extensions.git",
}
description = {
  summary = "Custom lua extensions.",
  detailed = [[
    udate, ustring, utable, umath, utrig, vec2, path, bit, test
  ]],
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["ule"] = "src/init.lua",
    ["ule"..".extensions.udate"] = "src/extensions/udate.lua",
    ["ule"..".extensions.umath"] = "src/extensions/umath.lua",
    ["ule"..".extensions.utrig"] = "src/extensions/utrig.lua",
    ["ule"..".extensions.utable"] = "src/extensions/utable.lua",
    ["ule"..".extensions.ustring"] = "src/extensions/ustring.lua",
    ["ule"..".extensions.vec2"] = "src/extensions/vec2.lua",
    ["ule"..".extensions.path"] = "src/extensions/path.lua",
    ["ule"..".extensions.bit"] = "src/extensions/bit.lua",
    ["ule"..".extensions.test"] = "src/extensions/test.lua",
  }
}
