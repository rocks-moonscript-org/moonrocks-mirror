rockspec_format = "3.0"
package = "lua-cc"
version = "1.2.1-0"
source = {
  url = "git+https://git.kokolor.es/imo/lua-cc",
  tag = "v1.2.1-0"
}
description = {
  summary = "A little module for the coding challenges from YT channel The Morpheus",
  detailed = [[
    This little module was written to made recurring tasks like fetching, submitting and time measureing simple as floof. It works with the challenges from the YT channel The Morpheus. For documentation see the README: https://git.kokolor.es/imo/lua-cc/src/branch/master/README.md .
  ]],
  homepage = "https://git.kokolor.es/imo/lua-cc",
  license = "The Unlicense",
  labels = { "web" }
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "lua-curl",
   "chronos",
   "dkjson"
}
build = {
   type = "builtin",
   modules = {
      cc = "cc.lua"
   }
}
