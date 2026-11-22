package = "lua-polars"
version = "0.6.0-1"

source = {
   url = "git+https://github.com/numeric-lua/lua-polars.git",
   tag = "v0.6.0",
}

description = {
   summary = "LuaJIT DataFrame bindings over Rust Polars",
   detailed = [[
Eager DataFrames over Polars: CSV/Parquet readers and writers, SQL, select,
filter, sort, group-by, joins, ordered columns, and JSON/table conversion.
Requires LuaJIT and a Rust toolchain at build time.
]],
   homepage = "https://github.com/numeric-lua/lua-polars",
   license = "BSD-3-Clause",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "command",
   build_command = "sh -c 'if [ -f target/release/libpolars_lua.so ] || [ -f target/release/libpolars_lua.dylib ]; then echo prebuilt; else make build; fi'",
   install_command = "make install PREFIX=$(PREFIX)",
}
