rockspec_format = "3.0"
package = "hk-parser"
version = "0.3.2-1"

source = {
   url = "git+https://github.com/HackerOS-Linux-System/hk-parser.git",
   tag = "v0.3.2",
}

description = {
   summary = "Lua bindings for hk-parser: parse, query, edit and write HackerOS .hk config files",
   detailed = [[
      Lua bindings for the hk-parser Rust crate. Parses HackerOS `.hk`
      configuration files (sections, typed values, nested maps, arrays,
      `${section.key}` / `${env:VAR}` interpolation), lets you query and edit
      them with dotted paths and writes them back with key order preserved.
      The parser itself is the Rust crate, compiled into a native module.
   ]],
   homepage = "https://github.com/HackerOS-Linux-System/hk-parser",
   license = "MIT",
   labels = { "config", "parser", "hackeros", "rust" },
}

dependencies = {
   "lua >= 5.1",
}

-- Needs a Rust toolchain (cargo) at install time. The backend picks the
-- matching mlua feature (lua51..lua55 / luajit) from the Lua version that
-- LuaRocks runs under.
build_dependencies = {
   "luarocks-build-rust-mlua",
}

build = {
   type = "rust-mlua",
   -- [Lua module name] = Cargo library name (`[lib] name` in Cargo.toml)
   modules = {
      hk_parser_core = "hk_parser",
   },
   -- The `lua*` features live in Cargo.toml; the CLI binary isn't needed here.
   cargo_extra_args = { "--lib" },
   default_features = false,
   -- Pure-Lua facade: `require "hk_parser"` (wraps `hk_parser_core`).
   install = {
      lua = {
         hk_parser = "luarocks/lua/hk_parser.lua",
      },
   },
}

test = {
   type = "command",
   script = "luarocks/test/run.lua",
}
