rockspec_format = "3.0"
package = "vpm-hello"
version = "0.1.0-1"
source = { url = "git+https://github.com/tibocub/vpm-hello.git", tag = "v0.1.0" }
description = { summary = "Throwaway module to test vpm publish", homepage = "https://github.com/tibocub/vpm-hello", license = "MIT" }
dependencies = { "lua >= 5.1" }
build = {
  type = "builtin",
  modules = {
    ["vpmhello"] = "vpmhello.lua",
  },
}
