package = "lua-arangodb"
version = "1.0.1-1"
source = {
   url = "git+https://github.com/skitsanos/lua-arangodb"
}
description = {
   summary = "### Dependencies",
   detailed = "### Dependencies",
   homepage = "https://github.com/skitsanos/lua-arangodb",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      arangodb = "src/arangodb.lua"
   }
}
