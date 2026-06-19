package = "bluelua-evdev"
version = "0.2.0-2"

source = {
  tag = "v0.2.0",
  url = "git+https://github.com/BlueLua/evdev.git",
}

description = {
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
    ["evdev.types/evdev"] = "types/evdev.d.lua",
    ["evdev.types/_enums"] = "types/_enums.d.lua",
    ["evdev.types/device"] = "types/device.d.lua",
    ["evdev.types/devices"] = "types/devices.d.lua",
    ["evdev.types/ecodes"] = "types/ecodes.d.lua",
    ["evdev.types/events"] = "types/events.d.lua",
    ["evdev.types/selector"] = "types/selector.d.lua",
    ["evdev.types/uinput"] = "types/uinput.d.lua",
  },
}

