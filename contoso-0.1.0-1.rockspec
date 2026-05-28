rockspec_format = "3.0"
package = "contoso"
version = "0.1.0-1"

source = {
   url = "git+https://codeberg.org/usrbinr/contoso.lua.git",
   tag = "v0.1.0"
}

description = {
   summary = "Synthetic business datasets for the fictional Contoso company",
   detailed = [[
      This Lua package provides access to 8 interconnected business datasets
      stored as Parquet files on Cloudflare R2, loaded efficiently via DuckDB.
      Requires LuaJIT (for FFI support) and libduckdb shared library.
   ]],
   homepage = "https://codeberg.org/usrbinr/contoso.lua",
   issues_url = "https://codeberg.org/usrbinr/contoso.lua/issues",
   maintainer = "Alejandro Hagan <alejandro.hagan@outlook.com>",
   license = "MIT",
   labels = { "duckdb", "database", "dataset", "ffi", "data" }
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["contoso"] = "src/contoso/init.lua",
      ["contoso.duckdb_ffi"] = "src/contoso/duckdb_ffi.lua",
      ["contoso.database"] = "src/contoso/database.lua"
   }
}

test = {
   type = "busted"
}
