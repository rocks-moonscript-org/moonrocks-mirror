package = "lua-polars"
version = "0.7.0-1"

source = {
   url = "git+https://github.com/numeric-lua/lua-polars.git",
   tag = "v0.7.0",
}

description = {
   summary = "LuaJIT DataFrame bindings over Rust Polars",
   detailed = [[
Eager DataFrames over Polars: CSV/Parquet readers and writers with CSV
delimiter/header options, SQL, select, filter, sort, group-by, joins, ordered
columns, null helpers, and JSON/table conversion. Requires LuaJIT and a Rust
toolchain at build time.
]],
   homepage = "https://github.com/numeric-lua/lua-polars",
   license = "BSD-3-Clause",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "command",
   build_command = "sh -c 'if [ -f target/release/libpolars_lua.so ] || [ -f target/release/libpolars_lua.dylib ]; then echo \"using prebuilt native bridge\"; else CARGO_BUILD_JOBS=${CARGO_BUILD_JOBS:-1} make build; fi'",
   install_command = "sh scripts/install-rock.sh \"$(LUADIR)\" \"$(LIBDIR)\"",
}
