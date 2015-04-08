package = "busted-stable"
version = "1.0-0"
source = {
  url = "https://github.com/kikito/busted-stable/archive/v1.0.0.tar.gz",
  dir = "busted-stable-1.0.0"
}
description = {
   summary = "Installs a stable version of busted",
   detailed = "If you are having trouble with busted because it installs unstable or backwards-incompatible versions, use busted-stable instead",
   homepage = "https://github.com/kikito/busted-stable",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "lua_cliargs 2.3-3",
   "busted = 1.11.1-1"
}
build = {
   type = "builtin",
   modules = {}
}
