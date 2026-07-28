rockspec_format = "3.0"

package = "hyprmorph"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/junaga/hyprmorph.git",
    tag = "v0.1.0",
}

description = {
    summary = "Convert legacy Hyprland .conf files to Hyprland Lua",
    detailed = [[
        hyprmorph is a small, loss-conscious command-line converter for
        migrating one Hyprland Hyprlang configuration file to the Lua API
        used by Hyprland 0.56. It preserves comments and order, warns about
        ambiguous constructs, and carries unsafe source lines forward as
        Lua comments for manual review.
    ]],
    homepage = "https://github.com/junaga/hyprmorph",
    license = "MIT",
}

dependencies = {
    "lua >= 5.1, < 5.6",
}

build = {
    type = "builtin",
    modules = {
        ["hyprmorph"] = "src/hyprmorph/init.lua",
        ["hyprmorph.cli"] = "src/hyprmorph/cli.lua",
        ["hyprmorph.converter"] = "src/hyprmorph/converter.lua",
        ["hyprmorph.dispatchers"] = "src/hyprmorph/dispatchers.lua",
        ["hyprmorph.parser"] = "src/hyprmorph/parser.lua",
        ["hyprmorph.schema"] = "src/hyprmorph/schema.lua",
        ["hyprmorph.util"] = "src/hyprmorph/util.lua",
        ["hyprmorph.values"] = "src/hyprmorph/values.lua",
    },
    install = {
        bin = {
            "bin/hyprmorph",
        },
    },
}

test = {
    type = "command",
    command = "lua spec/run.lua",
}
