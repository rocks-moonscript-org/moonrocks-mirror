package = "lapis-eswidget"
version = "1.3.0-1"

source = {
  url = "git+ssh://git@github.com/leafo/lapis-eswidget.git",
  branch = "v1.3.0"
}
description = {
  summary = "A widget base class designed for generating ES modules for bundling JavaScript & more",
  license = "MIT",
  maintainer = "Leaf Corcoran <leafot@gmail.com>",
  homepage = "https://github.com/leafo/lapis-eswidget",
}

dependencies = {
  "lua >= 5.1",
  "lapis",
  "argparse",
  "tableshape",
}

build = {
  type = "builtin",
  modules = {
    ["lapis.eswidget"] = "lapis/eswidget.lua",
    ["lapis.eswidget.cmd"] = "lapis/eswidget/cmd.lua",
    ["lapis.eswidget.prop_types"] = "lapis/eswidget/prop_types.lua",
    ["lapis.eswidget.render_flow"] = "lapis/eswidget/render_flow.lua",
    ["lapis.eswidget.version"] = "lapis/eswidget/version.lua",
  },
  install = {
    bin = { "bin/lapis-eswidget" }
  }
}
