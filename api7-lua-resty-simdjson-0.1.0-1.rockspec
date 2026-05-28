package = "api7-lua-resty-simdjson"
version = "0.1.0-1"
supported_platforms = { "linux", "macosx" }

source = {
    url = "git+https://github.com/api7/lua-resty-simdjson.git",
    tag = "v0.1.0",
}

description = {
    summary = "Fast JSON encoder and decoder for OpenResty",
    detailed = [[
        lua-resty-simdjson provides a LuaJIT FFI binding for simdjson.
        It is optimized for decoding large JSON payloads in OpenResty while
        keeping proxy path latency low through optional yielding.
    ]],
    homepage = "https://github.com/api7/lua-resty-simdjson",
    license = "Apache-2.0",
}

dependencies = {
    "lua == 5.1",
    "lua-cjson",
    "lua-resty-core",
}

build = {
    type = "command",
    build_command = "make build",
    install_command = [[
        set -e
        mkdir -p "$(LUADIR)/resty/simdjson" "$(LIBDIR)"
        cp lib/resty/simdjson/*.lua "$(LUADIR)/resty/simdjson/"
        lib=libsimdjson_ffi.so
        if [ ! -f "$lib" ]; then lib=libsimdjson_ffi.dylib; fi
        if [ ! -f "$lib" ]; then echo "simdjson native library not found"; exit 1; fi
        cp "$lib" "$(LIBDIR)/"
    ]],
}
