package = "stuart-sql"
version = "1.0.0-0"
source = {
   url = "https://github.com/BixData/stuart-sql/archive/1.0.0-0.tar.gz",
   dir = "stuart-sql-1.0.0-0"
}
description = {
   summary = "A pure Lua implementation of Spark SQL",
   detailed = [[
      A pure Lua implementation of Spark SQL, designed for
      use with Stuart, the Spark runtime for embedding and edge
      computing.
   ]],
   homepage = "https://github.com/BixData/stuart-sql",
   maintainer = "David Rauschenbach",
   license = "Apache 2.0"
}
dependencies = {
   "lua >= 5.1, < 5.3",
   "stuart ~> 1.0.0",
   "uuid ~> 0.2"
}
build = {
   type = "builtin",
   modules = {
      ["stuart-sql"] = "src/stuart-sql.lua",
      ["stuart-sql.DataFrameReader"] = "src/stuart-sql/DataFrameReader.lua",
      ["stuart-sql.SparkSession"] = "src/stuart-sql/SparkSession.lua",
      ["stuart-sql.SparkSession_Builder"] = "src/stuart-sql/SparkSession_Builder.lua"
   }
}
