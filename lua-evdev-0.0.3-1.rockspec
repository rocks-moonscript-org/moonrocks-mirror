rockspec_format = "3.0"
package = "lua-evdev"
version = "0.0.3-1"
source = {
  url = "git+https://github.com/MunifTanjim/lua-evdev.git",
  tag = version,
}
description = {
  summary = "LuaJIT FFI Bindings for libevdev.",
  detailed = [[
    LuaJIT FFI Bindings for libevdev.
  ]],
  license = "MIT",
  homepage = "https://github.com/MunifTanjim/lua-evdev",
  issues_url = "https://github.com/MunifTanjim/lua-evdev/issues",
  maintainer = "Munif Tanjim (https://muniftanjim.dev)",
  labels = { "evdev", "libevdev", "ffi" },
}
build = {
  type = "builtin",
  modules = {
    ["evdev.device"] = "evdev/device.lua",
    ["evdev.event"] = "evdev/event.lua",
    ["evdev.libevdev"] = "evdev/libevdev.lua",
    ["evdev.libevdev-uinput"] = "evdev/libevdev-uinput.lua",
    ["evdev.linux.input"] = "evdev/linux/input.lua",
    ["evdev.linux.input-constant"] = "evdev/linux/input-constant.lua",
    ["evdev.linux.sys.ioctl"] = "evdev/linux/sys/ioctl.lua",
    ["evdev.util"] = "evdev/util.lua",
  },
}
supported_platforms = {
  "linux",
}
