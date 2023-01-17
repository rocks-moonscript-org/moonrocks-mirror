package = "lua-arangodb"
version = "1.0.2-1"
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
      arangodb = "src/arangodb.lua",
      ["arangodb-db-create"] = "src/arangodb-db-create.lua",
      ["arangodb-db-drop"] = "src/arangodb-db-drop.lua",
      ["arangodb-db-list"] = "src/arangodb-db-list.lua",
      ["arangodb-db-query"] = "src/arangodb-db-query.lua"
   }
}
