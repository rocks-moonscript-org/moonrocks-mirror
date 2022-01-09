rockspec_format = "3.0"
package = "lua-udev"
version = "0.0.2-1"
source = {
  url = "git+https://github.com/MunifTanjim/lua-udev.git",
  tag = version,
}
description = {
  summary = "LuaJIT FFI Bindings for libudev.",
  detailed = [[
    LuaJIT FFI Bindings for libudev.
  ]],
  license = "MIT",
  homepage = "https://github.com/MunifTanjim/lua-udev",
  issues_url = "https://github.com/MunifTanjim/lua-udev/issues",
  maintainer = "Munif Tanjim (https://muniftanjim.dev)",
  labels = { "udev", "libudev", "ffi" },
}
build = {
  type = "builtin",
  modules = {
    ["udev.context"] = "udev/context.lua",
    ["udev.device"] = "udev/device.lua",
    ["udev.enumerator"] = "udev/enumerator.lua",
    ["udev.libudev"] = "udev/libudev.lua",
    ["udev.list"] = "udev/list.lua",
    ["udev.monitor"] = "udev/monitor.lua",
    ["udev.util"] = "udev/util.lua",
  },
}
dependencies = {}
build_dependencies = {
  "luacheck ~> 0.25",
}
supported_platforms = {
  "linux",
}
