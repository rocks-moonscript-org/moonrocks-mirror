package = "luajit-gumbo"
version = "0.1-2"
source = {
   url = "git://github.com/pguillory/luajit-gumbo"
}
description = {
   summary = "FFI binding for gumbo-parser",
   detailed = "",
   homepage = "https://github.com/pguillory/luajit-gumbo",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "make"
}
