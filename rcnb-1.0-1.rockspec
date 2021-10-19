package = "rcnb"
version = "1.0-1"

source = {
   url = "git+ssh://git@github.com/Yiwen-Chan/rcnb.lua.git"
}

description = {
   summary = "Everything can be encoded into RCNB with Lua.",
   homepage = "https://github.com/Yiwen-Chan/rcnb.lua",
   license = "MIT"
}

build = {
   type = "builtin",
   modules = {
      ["rcnb"] = "src/rcnb.lua"
   }
}