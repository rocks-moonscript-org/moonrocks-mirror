rockspec_format = "3.0"
package = "lipsum"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/ProCern/lua-lipsum.git",
   tag = 'v1.0.0',
}
description = {
   summary = "Lorem Ipsum generator",
   detailed = "Lorem Ipsum generator in Lua, with multiple options for generating specific shapes of text",
   homepage = "https://github.com/ProCern/lua-lipsum",
   license = "MPL-2.0"
}
dependencies = {
   "lua >= 5.1, < 5.6",
}
build = {
   type = "builtin",
}
