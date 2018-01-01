package = "stuart-sql"
version = "0.1.6-0"
source = {
   url = "https://github.com/BixData/stuart-sql/archive/0.1.6-0.tar.gz",
   dir = "stuart-sql-0.1.6-0"
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
   "middleclass <= 4.1-0",
   "parquet >= 0.8.0-3, < 0.8.1",
   "stuart >= 0.1.6",
   "uuid <= 0.2-1"
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
