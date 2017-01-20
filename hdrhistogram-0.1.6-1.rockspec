#!/bin/lua
package = "hdrhistogram"
local _version = "0.1.6"
version = _version .. "-1"
source = {
  url="git://github.com/slact/lua_hdrhistogram",
  tag="v".._version
}
description = {
  summary = "Lua library wrapping HdrHistogram_c ",
  detailed = [[ 
HdrHistogram is an algorithm designed for recording histograms of value measurements with configurable precision. Value precision is expressed as the number of significant digits, providing control over value quantization and resolution whilst maintaining a fixed cost in both space and time. This library wraps the C port. ]],
  homepage = "https://github.com/slact/lua_hdrhistogram",
  license = "MPL"
}
dependencies = {
  "lua >= 5.1, < 5.4",
}
build = {
  type = "builtin",
  modules = {
    ["hdrhistogram.hdr"] = {
      sources = {"hdr_histogram.c", "lua_hdrhistogram.c"},
      defines = {("DIST_VERSION=\"%s\""):format(_version)},
      variables={CFLAGS="-ggdb"}
    },
    hdrhistogram = "hdrhistogram.lua"
  }
}
