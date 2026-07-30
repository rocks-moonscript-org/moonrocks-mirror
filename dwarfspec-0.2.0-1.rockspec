rockspec_format = "3.0"

package = "dwarfspec"
version = "0.2.0-1"

source = {
    url = "git+https://github.com/dsisco11/DwarfSpec.git",
    tag = "v0.2.0",
}

description = {
    summary = "In-process Busted automation for live DFHack interfaces.",
    detailed = [[
DwarfSpec runs Busted live-interface specifications inside DFHack while its
external command safely starts, observes, aborts, and reports those runs.
]],
    homepage = "https://github.com/dsisco11/DwarfSpec",
    license = "MIT",
}

dependencies = {
    "lua >= 5.3",
    "argparse == 0.7.2-1",
    "luasystem == 0.3.0-2",
    "busted == 2.3.0-1",
}


test_dependencies = {
    "busted >= 2.0",
}

test = {
    type = "busted",
}

build = {
    type = "builtin",
    -- LuaRocks automatically discovers every Lua module beneath src/.
    -- Suppress its default copying of the repository's tests directory.
    copy_directories = {},
    install = {
        bin = {
            dwarfspec = "bin/dwarfspec",
        },
    },
}
