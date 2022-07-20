package = "charm"
version = "0.0-1"
source = {
  url = "git+https://github.com/marcosdly/charm"
}
description = {
  summary = "APT wrapper written and configured in Lua.",
  detailed = [[
      Customizable search engine for Debian's APT,
      and wrapper for remaining commands.
   ]],
  homepage = "https://github.com/marcosdly/charm",
  license = "GPL-3.0-or-later"
}
dependencies = {
  "lua >= 5.1, < 6.0",
  "eansi >= 1.1-1, < 2.0-0",
  "u-test >= 1.1.0-0, < 2.0.0-0"
}
build = {
  type = "builtin",
  modules = {
    ["charm"] = "src/lib/charm.redirect.lua",
    ["charm.core"] = "src/lib/core/src/main.lua",
    ["charm.output"] = "src/lib/output/src/main.lua"
  },
  install = {
    bin = { ["charm"] = "src/main.lua" },
    conf = { ["default.lua"] = "src/config/default.lua" }
  }
}
