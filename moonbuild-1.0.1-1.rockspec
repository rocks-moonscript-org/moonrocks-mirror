build = {
  install = {
    bin = {
      moonbuild = "bin/moonbuild.lua"
    }
  },
  modules = {
    ["moonbuild.fsutil"] = "moonbuild/fsutil.lua",
    ["moonbuild.stringutil"] = "moonbuild/stringutil.lua",
    ["moonbuild.tableutil"] = "moonbuild/tableutil.lua",
    ["moonbuild.util"] = "moonbuild/util.lua"
  },
  type = "builtin"
}
dependencies = {
  "lua >= 5.3",
  "luafilesystem >= 1.7.0"
}
description = {
  detailed = "moonbuild is a small build system that simplifies your build definitions by allowing you to use declarative as well as imperative rules. It represents the build as a DAG with explicit ordering, and doesn't give you any default confusing rules (unlike make)\n",
  summary = "Small build system in between make and a build.sh"
}
package = "moonbuild"
rockspec_format = "3.0"
source = {
  tag = "v1.0.1",
  url = "git://github.com/natnat-mc/moonbuild"
}
version = "1.0.1-1"
