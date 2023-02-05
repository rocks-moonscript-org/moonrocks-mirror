package = "carray"
version = "0.0.3-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-carray/archive/v"..versionNumber..".zip",
  dir = "lua-carray-"..versionNumber,
}
description = {
  summary = "Arrays for primitive numeric C data types",
  homepage = "https://github.com/osch/lua-carray",
  license = "MIT",
  detailed = [[
      This Lua module provides an array data type together with a C API for
      handling arrays of primitive numeric C data types in Lua script code and
      also in native C code for enhancing native Lua module interoperability. 
  ]],
}
dependencies = {
  "lua >= 5.1, <= 5.4",
}
build = {
  type = "builtin",
  modules = {
    carray = {
      sources = { 
          "src/main.c",
          "src/carray.c",
          "src/carray_capi_impl.c",
          "src/carray_compat.c",
      },
      defines = { "CARRAY_VERSION="..versionNumber },
    },
  }
}
