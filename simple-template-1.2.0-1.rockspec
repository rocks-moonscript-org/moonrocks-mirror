rockspec_format = "3.0"
package = "simple-template"
version = "1.2.0-1"
source = {
  url = "git+https://github.com/t0suj4/lua-simple-template.git",
  tag = "v1.2.0"
}
description = {
  summary = "A simple lua templating engine with good escaping and no control-flow",
  detailed = [[
    Pure-Lua templating engine (5.1-5.4 + LuaJIT) with no control-flow
    and powerful escaping. It allows filling variables from file contents,
    plain variables and callbacks. It can preserve indentation and strips away
    any temptation to write logic in template code.
    Support for escaping utf8 is not planned.
  ]],
  homepage = "https://github.com/t0suj4/lua-simple-template",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
}
test_dependencies = {
    "busted",
}
test = { type = "busted" }
build = {
  type = "builtin",
  modules = {
    ["simple-template"] = "simple-template.lua",
  },
}
