package = "lua-rover"
version = "scm-1"
source = {
   url = "git+https://github.com/3scale/lua-rover.git",
   branch = "master"
}
description = {
   homepage = "https://github.com/3scale/lua-rover",
   license = "Apache-2.0"
}
dependencies = {
   "argparse ~> 0.5.0",
   "luarocks ~> 2.4.3"
}
build = {
   type = "builtin",
   modules = {
      ["rover.cli"] = "src/rover/cli.lua",
      ["rover.cli.exec"] = "src/rover/cli/exec.lua",
      ["rover.cli.inspect"] = "src/rover/cli/inspect.lua",
      ["rover.cli.install"] = "src/rover/cli/install.lua",
      ["rover.cli.lock"] = "src/rover/cli/lock.lua",
      ["rover.cli.update"] = "src/rover/cli/update.lua",
      ["rover.dsl"] = "src/rover/dsl.lua",
      ["rover.env"] = "src/rover/env.lua",
      ["rover.exec"] = "src/rover/exec.lua",
      ["rover.inspect"] = "src/rover/inspect.lua",
      ["rover.install"] = "src/rover/install.lua",
      ["rover.lock"] = "src/rover/lock.lua",
      ["rover.rockspec"] = "src/rover/rockspec.lua",
      ["rover.roverfile"] = "src/rover/roverfile.lua",
      ["rover.setup"] = "src/rover/setup.lua",
      ["rover.tree"] = "src/rover/tree.lua",
      ["rover.update"] = "src/rover/update.lua",
      ["rover.vendor"] = "src/rover/vendor.lua"
   },
   install = {
      bin = {
         rover = "bin/rover"
      }
   }
}
