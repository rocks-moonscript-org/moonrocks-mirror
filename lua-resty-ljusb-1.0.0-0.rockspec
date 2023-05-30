package = "lua-resty-ljusb"
version = "1.0.0-0"
source = {
   url = "git://github.com/tom2nonames/lua-resty-ljusb"
}
description = {
   summary = "Libusb (v1.0) module for OpenResty",
   detailed = [[
    Exposes the whole low-level libusb API (v1.0.18), plus an event-based high-level Lua-API on top of it.
    ]],
   detailed = "Libusb (v1.0) module for OpenResty",
   homepage = "https://github.com/tom2nonames/lua-resty-ljusb",
   license = "MIT",
   maintainer = "tom2nonames@gmail.com"
}
dependencies = {
}
build = {
   type = "builtin",
   modules = {
      ["ljusb"]               = "lib/resty/ljusb.lua",
      ["ljusb.core"]          = "lib/resty/ljusb/ljusb_ffi_core.lua",
      ["ljusb.context"]       = "lib/resty/ljusb/usb-context.lua",
      ["ljusb.device.handle"] = "lib/resty/ljusb/usb-device-handle.lua",
      ["ljusb.device.list"]   = "lib/resty/ljusb/usb-device-list.lua",
      ["ljusb.device"]        = "lib/resty/ljusb/usb-device.lua",
      ["ljusb.transfer"]      = "lib/resty/ljusb/usb-transfer.lua",
   }
}
