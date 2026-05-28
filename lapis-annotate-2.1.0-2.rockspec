package = "lapis-annotate"
version = "2.1.0-2"

source = {
  url = "git://github.com/leafo/lapis-annotate.git",
  branch = "v2.1.0"
}

description = {
  summary = "Annotate Lapis models with a comment describing schema",
  license = "MIT",
  maintainer = "Leaf Corcoran <leafot@gmail.com>",
}

dependencies = {
  "lua >= 5.1",
  "lapis",
}

build = {
  type = "builtin",
  modules = {
    ["lapis.annotate.pg_schema"] = "lapis/annotate/pg_schema.lua",
    ["lapis.cmd.actions.annotate"] = "lapis/cmd/actions/annotate.lua",
  }
}
