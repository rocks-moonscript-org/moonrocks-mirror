package = "stuart-sql"
version = "0.1.3-0"
source = {
   url = "https://github.com/BixData/stuart-sql/archive/0.1.3-0.tar.gz",
   dir = "stuart-sql-0.1.3-0"
}
description = {
   summary = "A native Lua implementation of Spark SQL",
   detailed = [[
      A native Lua implementation of Spark SQL, designed for
      use with Stuart, the Spark runtime for embedding and edge
      computing.
   ]],
   homepage = "https://github.com/BixData/stuart-sql",
   maintainer = "David Rauschenbach",
   license = "Apache 2.0"
}
dependencies = {
   "lua >= 5.1",
   "stuart = 0.1.3",
   "uuid <= 0.2-1"
}
build = {
   type = "builtin",
   modules = {
      ["stuart-sql"] = "src/stuart-sql.lua",
      ["stuart-sql.SparkSession"] = "src/stuart-sql/SparkSession.lua",
      ["stuart-sql.SparkSession_Builder"] = "src/stuart-sql/SparkSession_Builder.lua"
   }
}
