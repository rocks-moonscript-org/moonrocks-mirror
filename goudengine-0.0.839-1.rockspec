-- LuaRocks rockspec for GoudEngine Lua SDK
-- This package provides the native engine library and Lua runner binary
-- for developing games with GoudEngine in Lua.

rockspec_format = "3.0"
package = "goudengine"
version = "0.0.839-1"

source = {
   url = "git+https://github.com/aram-devdocs/GoudEngine.git",
   tag = "v0.0.839",
}

description = {
   summary = "Lua scripting SDK for the GoudEngine game engine.",
   detailed = [[
      GoudEngine is a Rust-powered game engine with embedded Lua scripting
      support via mlua. This package provides the Lua runner binary and
      documentation for writing 2D games in Lua.

      The Lua SDK is embedded in the engine -- scripts define on_init(),
      on_update(dt), and on_draw() callbacks that the engine drives each frame.
   ]],
   homepage = "https://github.com/aram-devdocs/GoudEngine",
   license = "MIT",
   labels = { "gamedev", "game-engine", "2d", "lua", "scripting" },
}

dependencies = {
   "lua >= 5.4",
}

build = {
   type = "command",
   build_command = "cargo build --release -p lua-runner",
   install = {
      bin = {
         ["goud-lua-runner"] = "target/release/lua-runner",
      },
   },
}
