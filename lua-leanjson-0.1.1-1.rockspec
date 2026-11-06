package = "lua-leanjson"
version = "0.1.1-1"
supported_platforms = { "linux", "macosx" }

source = {
    url = "https://github.com/GYWang1983/lua-leanjson/archive/refs/tags/v0.1.1.tar.gz",
    dir = "lua-leanjson-0.1.1",
}

description = {
    summary = "Memory-conscious JSON processing for LuaJIT and OpenResty",
    detailed = [[
        LeanJSON is a Rust-implemented JSON decoder exposed to LuaJIT through FFI,
        forked from https://github.com/api7/lua-qjson.
        It provides source-backed mutation, independent forks, file and
        incremental sources, and bounded output for large JSON payloads while
        reading only the fields needed by LuaJIT and OpenResty callers.
    ]],
    homepage = "https://github.com/GYWang1983/lua-leanjson",
    license = "Apache-2.0",
}

dependencies = {
    "lua == 5.1",
}

build = {
    type = "command",
    build_command = "CARGO_TARGET_DIR=target cargo build --locked --release",
    install_command = [[
        set -e
        mkdir -p "$(LUADIR)/leanjson" "$(LIBDIR)" "$(PREFIX)/doc"
        cp LICENSE NOTICE "$(PREFIX)/doc/"
        cp LICENSES/lua-cjson.txt "$(PREFIX)/doc/lua-cjson-LICENSE.txt"
        cp lua/leanjson.lua "$(LUADIR)/leanjson.lua"
        cp lua/leanjson/lib.lua "$(LUADIR)/leanjson/lib.lua"
        cp lua/leanjson/encode.lua "$(LUADIR)/leanjson/encode.lua"
        cp lua/leanjson/table.lua "$(LUADIR)/leanjson/table.lua"
        cp lua/leanjson/safe.lua "$(LUADIR)/leanjson/safe.lua"
        cp lua/leanjson/settings.lua "$(LUADIR)/leanjson/settings.lua"
        cp lua/leanjson/number.lua "$(LUADIR)/leanjson/number.lua"
        cp lua/leanjson/nodes.lua "$(LUADIR)/leanjson/nodes.lua"
        cp lua/leanjson/proxy.lua "$(LUADIR)/leanjson/proxy.lua"
        cp lua/leanjson/reader.lua "$(LUADIR)/leanjson/reader.lua"
        cp lua/leanjson/source_backend.lua "$(LUADIR)/leanjson/source_backend.lua"
        cp lua/leanjson/source_memory.lua "$(LUADIR)/leanjson/source_memory.lua"
        cp lua/leanjson/source_buffer.lua "$(LUADIR)/leanjson/source_buffer.lua"
        cp lua/leanjson/source.lua "$(LUADIR)/leanjson/source.lua"
        cp lua/leanjson/source_io.lua "$(LUADIR)/leanjson/source_io.lua"
        cp lua/leanjson/path.lua "$(LUADIR)/leanjson/path.lua"
        cp lua/leanjson/query.lua "$(LUADIR)/leanjson/query.lua"
        cp lua/leanjson/schema.lua "$(LUADIR)/leanjson/schema.lua"
        cp lua/leanjson/leases.lua "$(LUADIR)/leanjson/leases.lua"
        cp lua/leanjson/options.lua "$(LUADIR)/leanjson/options.lua"
        cp lua/leanjson/loading.lua "$(LUADIR)/leanjson/loading.lua"
        cp lua/leanjson/openresty.lua "$(LUADIR)/leanjson/openresty.lua"
        lib=target/release/libleanjson.so
        if [ ! -f "$lib" ]; then lib=target/release/libleanjson.dylib; fi
        if [ ! -f "$lib" ]; then echo "leanjson native library not found"; exit 1; fi
        cp "$lib" "$(LIBDIR)/leanjson.so"
    ]],
}
