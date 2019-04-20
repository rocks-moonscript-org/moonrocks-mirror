package = "lnodelist"
version = "0.0.1-1"
source = {
   url = "https://github.com/utmhikari/lnodelist.git",
}
description = {
   summary = "A doubly linked list with pseudo JS sugars and common features written in C API",
   detailed = [[
see https://github.com/utmhikari/lnodelist for details~
need more issues XD~~~
   ]],
   license = "MIT"
}
dependencies = {
   "lua >= 5.3, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      lnodelist = "src/lnodelist.c",
   },
}