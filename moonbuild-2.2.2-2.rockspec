build = {
  install = {
    bin = {
      moonbuild = "out/moonbuild"
    }
  },
  modules = {
    moonbuild = "out/moonbuild.lua"
  },
  type = "builtin"
}
dependencies = {
  "lua >= 5.1",
  "argparse >= 0.7.1-1",
  "moonscript >= 0.5.0-1"
}
description = {
  detailed = "moonbuild is a small build system that simplifies your build definitions by allowing you to use declarative as well as imperative rules. It represents the build as a DAG with explicit ordering, and doesn't give you any default confusing rules (unlike make). If you can, installing luaposix and/or luafilesystem will speed up builds and increase stability.\n",
  summary = "Small build system in between make and a build.sh"
}
package = "moonbuild"
rockspec_format = "3.0"
source = {
  tag = "v2.2.2",
  url = "git://github.com/natnat-mc/moonbuild"
}
version = "2.2.2-2"
