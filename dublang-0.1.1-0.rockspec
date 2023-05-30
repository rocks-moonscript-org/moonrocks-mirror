package = "dublang"
version = "0.1.1-0"
source = {
  url = "git+https://codeberg.org/joenio/dublang",
  tag = "0.1.1"
}
description = {
  summary = "dublang universal live coding interface",
  homepage = "https://dublang.4two.art",
  license = "GPL_v3"
}
dependencies = {
  "lua = 5.1",
  "luv >= 1.36.0"
}
build = {
  type = "builtin",
  modules = { },
  copy_directories = { "bin", "boot", "config", "handlers", "services" }
}
