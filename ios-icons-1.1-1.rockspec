package = "ios-icons"
version = "1.1-1"
source = {
   url = "git://github.com/gdawg/ios-icons",
   tag = "v1.1",
}
description = {
   summary = "Arrange your ios icons through code not with your finger",
   detailed = "Lua bindings for ios icon management using libimobiledevice.",
   homepage = "https://github.com/gdawg/ios-icons/",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.2",
   "luajson",
   "luasocket",
   "busted",
   "chroma",
}
-- the magic glue:
-- - https://github.com/libimobiledevice/libimobiledevice
-- - https://github.com/libimobiledevice/libplist
external_dependencies = {
   IMOBILEDEVICE = { library = "imobiledevice" },
   PLIST = { library = "plist" }
}
build = {
   type = "builtin",
   modules = {   
      ["ios-icons"] = "lib/ios-icons.lua",
      ["ios-icons.iconlib"] = { 
         sources = { 
            "src/comms.c",
            "src/icons.c",
            "src/util.c",
            "src/ios_iconlib.c",
            "src/sb_ios2lua.c",
            "src/sb_lua2ios.c",
            "src/sb_registry.c",
            "src/save_load.c",
         },
         libraries = { "imobiledevice", "plist" },
      },
      ["ios-icons.icon"] = "lib/ios-icons/icon.lua",
      ["ios-icons.icons"] = "lib/ios-icons/icons.lua",
      ["ios-icons.page"] = "lib/ios-icons/page.lua",
      ["ios-icons.fn"] = "lib/ios-icons/fn.lua",
   }
}

