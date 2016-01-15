package = "danetool"
version = "7-1"
source = {
   url = "hg+http://code.zash.se/danetool/",
   tag = "b44edeeaed20"
}
description = {
   summary = "Tool for validating and generating TLSA records",
   homepage = "https://www.zash.se/danetool.html",
   license = "MIT/X11"
}
dependencies = {
   "luasocket", "luasec >= 0.5", "luaunbound"
}
build = {
   type = "builtin",
   modules = {},
   install = {
      bin = {
         "danetool"
      }
   }
}
