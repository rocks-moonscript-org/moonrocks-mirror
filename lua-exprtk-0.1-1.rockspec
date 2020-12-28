
package = "lua-exprtk"
version = "0.1-1"
source = {
  url = "git://github.com/chrislo1976/lua-exprtk",
  tag = "v0.1"
}
description = {
    summary = "A lua wrapper for exprtk (C++ Mathematical Expression Parsing And Evaluation Library)",
    detailed = [[
    ]],
    homepage = "https://github.com/chrislo1976/lua-exprtk",
    license = "MIT",
    maintainer = "Christian Lorenz"
}
dependencies = {
    "lua >= 5.3"
}
build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_INSTALL_PREFIX="$(PREFIX)"
   }
}
