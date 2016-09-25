package = "gonapps-jwt"
version = "1.0-1"

source = {
    url = "git://github.com/gonapps/gonapps-lua-jwt",
    tag = "v1.0"
}

description = {
    summary = "A thread-safe luaossl based JWT encoding/decoding module.",
    detailed = [[
        This module is a fork from x25/luajwt.
        It is using luaossl instead of LuaCrypto because LuaCrypto is deprecated, not maintained and not thread-safe.
        Please refer homepage to see the usage.]],
    homepage = "http://github.com/gonapps/gonapps-lua-jwt",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1",
    "rapidjson >= 0.4.5-1",
	"lbase64 >= 20120807-3",
    "luaossl >= 20151221-1"
}

build = {
    type = "builtin",
    modules = {
        ["gonapps.jwt"] = "src/gonapps/jwt.lua"
    }
}
