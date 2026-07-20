rockspec_format = "3.0"
package = "tecs2d"
version = "0.10.10-1"

source = {
    url = "git+https://github.com/tecs-dev/tecs.git",
    tag = "v0.10.10"
}

description = {
    summary = "LÖVE2D game-engine layer for the Tecs ECS framework",
    detailed = [[
Tecs2D is the LÖVE2D-facing game-engine layer built on top of the Tecs ECS core.
It provides a GPU-driven render pipeline (LÖVE 12) with deferred lighting and
shadows, input, audio, physics, tweens, a controller plugin, tiled-map support,
a UI plugin, and MCP tooling for introspection and live editing.

The renderer-agnostic ECS core is shipped separately in the `tecs` rock and is
declared as a dependency.
    ]],
    homepage = "https://tecs.dev",
    license = "MIT OR Apache-2.0"
}

dependencies = {
    "lua >= 5.1, < 5.5",
    "tl == dev",
    "tecs == 0.10.10",
    "luasocket",
    "luasocket-tl-type >= 0.0.2",
    "tecs-love2d-tl-type >= 0.1.0",
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
    build_target = "build-tecs2d",
    install_variables = {
        LUADIR = "$(LUADIR)",
        ROCK = "tecs2d",
    },
    modules = {},
    install = {}
}
