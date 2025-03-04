package = "danetool"
version = "9-1"
source = {
   url = "hg+https://code.zash.se/danetool/",
   tag = "fa130f5bac37"
}
description = {
   summary = "Tool for validating and generating TLSA records",
   homepage = "https://www.zash.se/danetool.html",
   license = "MIT/X11"
}
dependencies = {
   "luasocket", "luasec >= 0.5", "luaunbound", "argparse"
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
