rockspec_format = "3.0"
package = "tecs"
version = "0.10.10-1"

source = {
    url = "git+https://github.com/tecs-dev/tecs.git",
    tag = "v0.10.10"
}

description = {
    summary = "Typed, high-performance ECS framework for LuaJIT",
    detailed = [[
Tecs is a high-performance Entity Component System (ECS) framework written in Teal,
designed specifically for LuaJIT with FFI. It provides a type-safe, cache-friendly
ECS implementation with immutable spawns, staging archetypes, and frame arena memory
management for zero allocations after warmup.

This rock ships only the renderer-agnostic core. For the LÖVE2D game-engine layer
(rendering, input, audio, tiled maps, tweens, UI, MCP tooling), install the
companion `tecs2d` rock.
    ]],
    homepage = "https://tecs.dev",
    license = "MIT OR Apache-2.0"
}

dependencies = {
    "lua >= 5.1, < 5.5",
    "tl == dev",
    "luajit-tl-type >= 0.0.2",
}

test_dependencies = {
    "busted",
    "busted-tl-type >= 0.0.1",
    "luassert-tl-type >= 0.0.1",
}

test = {
    type = "busted",
    flags = { "--loaders=teal" }
}

build = {
    type = "make",
    build_target = "build-tecs",
    install_variables = {
        LUADIR = "$(LUADIR)",
        ROCK = "tecs",
    },
    modules = {},
    install = {}
}
