package = "lapis-annotate"
version = "1.1.0-1"

source = {
  url = "git://github.com/leafo/lapis-annotate.git",
	tag = "v1.1.0"
}

description = {
  summary = "Annotate Lapis models with a comment describing schema",
  license = "MIT",
  maintainer = "Leaf Corcoran <leafot@gmail.com>",
}

dependencies = {
  "lua == 5.1",
  "lapis",
}

build = {
  type = "builtin",
  modules = {
    ["lapis.cmd.actions.annotate"] = "lapis/cmd/actions/annotate.lua",
  }
}

