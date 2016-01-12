package = "danetool"
version = "6-1"
source = {
   url = "hg+http://code.zash.se/danetool/",
   tag = "6dcc645757f3"
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
