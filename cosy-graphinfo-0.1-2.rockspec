package = "cosy-graphinfo"
version = "0.1-2"

source = {
  url = "git://github.com/CosyVerif/tool-graphinfo",
  tag = "0.1",
}

description = {
  summary     = "Compute #vertices and #edges of a graph",
  detailed    = [[]],
  license     = "MIT/X11",
  maintainer  = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "cosy-formalisms",
  "cosy-client",
  "copas-ev",
}

build = {
  type    = "builtin",
  modules = {
    ["cosy.tool.graphinfo"       ] = "src/cosy/tool/graphinfo.lua",
    ["cosy.tool.graphinfo-binary"] = "src/cosy/tool/graphinfo-binary.lua",
    ["cosy.tool.graphinfo-test"  ] = "src/cosy/tool/graphinfo-test.lua",
  },
}
