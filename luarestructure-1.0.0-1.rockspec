rockspec_format = "3.0"
package = "luarestructure"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/deepakjois/luarestructure.git",
   tag = "v1.0.0"
}
description = {
   summary = "Declaratively encode and decode binary data",
   detailed = [[
luarestructure is a nearly line-by-line port of [restructure] (including this README)
from Javascript to Lua.]],
   homepage = "https://github.com/deepakjois/luarestructure",
   license = "MIT"
}
dependencies = {
   "lua >= 5.2, < 5.4",
   "vstruct >= 2.0.1"
}
build = {
   type = "builtin"
}
test = {
  type = "busted"
}
