package = "javaimp"
version = "0.0.1-1"
rockspec_format = "3.0"

-- TODO: Should this source be local?
source = {
  url = "git+ssh://git@github.com/broma0/javaimp.git"
}

description = {
  homepage = "https://broma0.github.io/javaimp",
  license = "MIT"
}

-- TODO: Add luacheck
dependencies = {
  "lua == 5.1",
  "santoku >= 0.0.9-1",
  "argparse >= 0.7.1",
  "lsqlite3 >= 0.9.5"
}

build = {
  type = "builtin",
  modules = {
    ["javaimp.cli"] = "src/javaimp/cli.lua",
    ["javaimp.nvim"] = "src/javaimp/nvim.lua",
    ["javaimp.find"] = "src/javaimp/find.lua",
    ["javaimp.update"] = "src/javaimp/update.lua"
  }
}

test = {
  type = "command",
  command = "sh test/run.sh"
}
