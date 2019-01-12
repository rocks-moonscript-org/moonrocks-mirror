package = "lua-csv"
version = "1.1-1"
source =
{
  url = "git://github.com/isage/lua-csv.git",
  branch = "master",
  tag = "v1.1",
}
description =
{
  summary = "CSV and other delimited file reading",
  homepage = "http://github.com/isage/lua-csv",
  license = "MIT/X11",
  maintainer = "Ivan Epifanov <isage.dna@gmail.com>"
}
dependencies = { "lua >= 5.1" }
build =
{
  type = "builtin",
  modules =
  {
    ["lua-csv.csv"] = "lib/lua-csv/csv.lua",
  },
}
