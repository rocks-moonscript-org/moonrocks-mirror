rockspec_format = "3.0"
package = "lua-usbir"
version = "1.0-1"
source = {
   url = "git+https://github.com/Khronos31/lua-usbir.git",
   tag = "v1.0"
}
description = {
   summary = "Lua binding for USB-IR-Remote libusbir",
   detailed = [[
      Provides Lua access to infrared transmission and reception 
      using the libusbir library.
   ]],
   homepage = "https://github.com/Khronos31/lua-usbir",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "builtin",
   modules = {
      usbir = {
         sources = {
            "lua_usbir.cpp",
            "libusbir/usbir.cpp"
         },
         libraries = {"usb-1.0"},
         incdirs = {"libusbir"}
      }
   }
}
