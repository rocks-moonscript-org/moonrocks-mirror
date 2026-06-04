package = "bluelua-evdev"
version = "0.2.0-1"

source = {
  url = "git+https://github.com/BlueLua/evdev.git",
  tag = "v0.2.0",
}

description = {
  summary = "Lua bindings for Linux evdev and uinput input control",
  detailed = [[
  Lua bindings for Linux evdev and /dev/uinput virtual devices.
  Open input devices, read events, poll multiple devices, and create virtual
  keyboards or relative pointer devices from Lua.
  ]],
  homepage = "https://github.com/BlueLua/evdev",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    evdev = "src/evdev/init.lua",
    ["evdev._util"] = "src/evdev/_util.lua",
    ["evdev.device"] = "src/evdev/device.lua",
    ["evdev.devices"] = "src/evdev/devices.lua",
    ["evdev.ecodes"] = "src/evdev/ecodes.lua",
    ["evdev.events"] = "src/evdev/events.lua",
    ["evdev.selector"] = "src/evdev/selector.lua",
    ["evdev.uinput"] = "src/evdev/uinput.lua",
    ["evdev._core"] = {
      sources = {
        "src/evdev/evdev_core.c",
        "src/evdev/util.c",
        "src/evdev/devices.c",
        "src/evdev/device.c",
        "src/evdev/selector.c",
        "src/evdev/uinput.c",
      },
    },
  },
}
