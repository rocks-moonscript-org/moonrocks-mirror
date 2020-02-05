package = "pathetic"
version = "1.0.1-1"
source = {
   url = "git://github.com/ryanford-frontend/pathetic",
   tag = "v1.0.1"
}
description = {
   detailed = "Helper library build to parse http URI paths as described in https://tools.ietf.org/html/rfc3986",
   homepage = "https://ryanford-frontend.github.io/pathetic",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1",
   "lpeg"
}
build = {
   type = "builtin",
   modules = {
      pathetic = "pathetic.lua"
   }
}
