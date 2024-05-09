package = "snaphelpers"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/nuccitheboss/snaphelpers",
  tag = "v0.1.0",
}
description = {
  summary = "Interface with the snap subsystem from within a snap.",
  detailed = [[
    snaphelpers is a Lua module for interfacing with the snap subsystem
    from within a snap. Level up your hooks and wrappers by being able
    to quickly access configuration options and application properties
    without requiring the use of complex and difficult to maintain
    shell scripts!
  ]],
  homepage = "https://github.com/nuccitheboss/snaphelpers",
  license = "LGPLv3"
}
dependencies = {
  "lua >= 5.1, < 5.5",
  "lua-cjson >= 2.1.0",
  "lyaml >= 6.2.7",
  "luaposix >= 33.4.0"
}
build = {
  type = "builtin",
  modules = {
    ["snap"] = "src/snap/init.lua",
    ["snap.config"] = "src/snap/config.lua",
    ["snap.ctl"] = "src/snap/ctl.lua",
    ["snap.env"] = "src/snap/env.lua",
    ["snap.health"] = "src/snap/health.lua",
    ["snap.metadata"] = "src/snap/metadata.lua",
    ["snap.path"] = "src/snap/path.lua",
    ["snap.service"] = "src/snap/service.lua"
  },
  copy_directories = { "spec" }
}
