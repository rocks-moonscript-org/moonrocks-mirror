package = "lua-qjson"
version = "0.1.0-1"
supported_platforms = { "linux", "macosx" }

source = {
    url = "git+https://github.com/api7/lua-qjson.git",
    tag = "v0.1.0",
}

description = {
    summary = "Fast JSON decoder for LuaJIT FFI consumers",
    detailed = [[
        qjson is a Rust-implemented JSON decoder exposed to LuaJIT through FFI.
        It is optimized for parsing large JSON payloads while reading only the
        fields needed by Lua callers.
    ]],
    homepage = "https://github.com/api7/lua-qjson",
    license = "Apache-2.0",
}

dependencies = {
    "lua == 5.1",
}

build = {
    type = "command",
    build_command = "CARGO_TARGET_DIR=target cargo build --release",
    install_command = [[
        set -e
        mkdir -p "$(LUADIR)/qjson" "$(LIBDIR)"
        cp lua/qjson.lua "$(LUADIR)/qjson.lua"
        cp lua/qjson/lib.lua "$(LUADIR)/qjson/lib.lua"
        cp lua/qjson/table.lua "$(LUADIR)/qjson/table.lua"
        lib=target/release/libqjson.so
        if [ ! -f "$lib" ]; then lib=target/release/libqjson.dylib; fi
        if [ ! -f "$lib" ]; then echo "qjson native library not found"; exit 1; fi
        cp "$lib" "$(LIBDIR)/qjson.so"
    ]],
}
