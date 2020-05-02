build = {
  install = {
    bin = {
      rockbuild = "rockbuild.lua"
    }
  }
}
dependencies = {
  "lyaml",
  "serpent",
  "ansikit",
  "filekit >= 1.3",
  "argparse"
}
description = {
  detailed = "daelvn/rockwriter stopped working for me, so I ended up making this. It takes a YAML \"rockframe\", and compiles it into a rockspec by providing a version. It can also test the rock or upload it for you!\n",
  homepage = "https://github.com/daelvn/rockbuild",
  labels = {
    "luarocks",
    "yaml"
  },
  license = "Unlicense",
  summary = "Program for compiling rockframes written in YAML to rockspecs."
}
package = "rockbuild"
rockspec_format = "3.0"
source = {
  tag = "v1.2",
  url = "git://github.com/daelvn/rockbuild.git"
}
version = "1.2-1"
