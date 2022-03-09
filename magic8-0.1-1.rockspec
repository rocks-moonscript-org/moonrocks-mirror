package = "magic8"
version = "0.1-1"
source = {
   url = "git://github.com/rainslick/magic8"
}
description = {
   summary = "Magic 8-ball.",
   homepage = "https://github.com/rainslick/magic8",
   license = "MIT/X11"
}
build = {
   type = "builtin",
   modules = {
	magic8 = "magic8.lua"
   }
}
