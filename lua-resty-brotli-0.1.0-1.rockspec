package = "lua-resty-brotli"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/api7/lua-resty-brotli.git",
    tag = "v0.1.0",
}
description = {
    summary = "Streaming Brotli encoding and bounded decoding for LuaJIT",
    homepage = "https://github.com/api7/lua-resty-brotli",
    license = "Apache-2.0",
}
dependencies = {"lua == 5.1"}
build = {
    type = "builtin",
    modules = {["resty.brotli"] = "lib/resty/brotli.lua"},
    copy_directories = {},
}
