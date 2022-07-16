package = "klib"
version = "1.0-0"
source = {
    url = "https://github.com/yorkane/lua-resty-klib/archive/tags/v1.0-0.zip",
    dir = "klib-1.0-0"
}
description = {
    summary = "A utils collection for openresty",
    homepage = "https://github.com/yorkane/lua-resty-klib",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["klib.util"] = "lib/klib/util.lua",
    ["kilb.klass"] = "lib/klib/klass.lua",
    ["kilb.sbuffer"] = "lib/klib/sbuffer.lua",
    ["kilb.dump"] = "lib/klib/dump.lua",
    ["kilb.check_sanity"] = "lib/klib/check_sanity.lua",
  }
}
