package = "testpkg"
version = "1.0-1"
source = {
   url = "http://service.blasthack.net/files/lua.zip"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {}
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "inspect >= 3.1.1"
}