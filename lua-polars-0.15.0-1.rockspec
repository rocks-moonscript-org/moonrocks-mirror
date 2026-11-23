package = "lua-polars"
version = "0.15.0-1"

source = {
   url = "git+https://github.com/numeric-lua/lua-polars.git",
   tag = "v0.15.0",
}

description = {
   summary = "LuaJIT DataFrame bindings over Rust Polars",
   detailed = [[
Eager DataFrames over Polars: CSV/Parquet readers and writers with CSV
delimiter/header/quote/comment/columns/renames/dtypes/null-values reader
options, per-column null markers, skip-rows/row-limit windows, UTF-8 lossy
decoding, and delimiter/header/null-value/line-terminator writer options; SQL,
select, filter, sort, group-by, joins, ordered columns, null helpers, and
JSON/table conversion. Requires LuaJIT and a Rust toolchain at build time.
]],
   homepage = "https://github.com/numeric-lua/lua-polars",
   license = "BSD-3-Clause",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "command",
   build_command = "sh scripts/ensure-bridge.sh",
   install_command = "sh scripts/install-rock.sh \"$(LUADIR)\" \"$(LIBDIR)\"",
}
