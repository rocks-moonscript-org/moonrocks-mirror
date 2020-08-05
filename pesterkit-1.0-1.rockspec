build = {
  modules = {
    pesterkit = "pesterkit.lua"
  },
  type = "builtin"
}
dependencies = {
  "luairc",
  "xml2lua",
  "debugkit",
  "lua >= 5.1"
}
description = {
  detailed = "pesterkit is a library for handling Pesterchum (over IRC) messages, users, quirks and more.\n",
  homepage = "https://github.com/daelvn/pesterkit",
  summary = "A Pesterchum-over-IRC library for all your Homestuck needs."
}
package = "pesterkit"
rockspec_format = "3.0"
source = {
  tag = "v1.0",
  url = "git://github.com/daelvn/pesterkit"
}
version = "1.0-1"
