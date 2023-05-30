package = "dublang"
version = "0.1.0-2"
source = {
  url = "git+https://codeberg.org/joenio/dublang",
  tag = "0.1.0"
}
description = {
  summary = "dublang universal live coding interface",
  homepage = "http://dublang.4two.art",
  license = "GPL_v3"
}
dependencies = {
  "luv >= 1.43.0"
}
build = {
  type = "builtin",
  modules = { },
  copy_directories = { "bin", "boot", "config", "handlers", "services" }
}
