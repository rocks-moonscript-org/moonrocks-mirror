rockspec_format = "3.0"
package = "tersen"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/sobjornstad/tersen/",
    tag = "v0.1.0",
}
description = {
    summary = "Fast, flexible, small abbreviation engine",
    detailed = [[
        Tersen is an abbreviation engine that compresses text in a
        human-readable fashion. Abbreviations are user-specifiable
        through a dictionary of textual mappings, and more complex behavior
        can be obtained through small snippets of Lua code attached to
        extensibility points called hooks and annotations.
    ]],
    homepage = "https://github.com/sobjornstad/tersen/",
    issues_url = "https://github.com/sobjornstad/tersen/issues/",
    labels = {"commandline"},
    license = "MIT",
}
dependencies = {
    "lua >= 5.3, < 5.5",
    "argparse >= 0.7.1",
    "inspect >=3.1.1",
}
build = {
    type = "builtin",
    install = {
        bin = {
            tersen = "tersen/main.lua",
        },
    },
    modules = {
        ["tersen.annot_exec"]   = "tersen/annot_exec.lua",
        ["tersen.case"]         = "tersen/case.lua",
        ["tersen.hook_exec"]    = "tersen/hook_exec.lua",
        ["tersen.lut"]          = "tersen/lut.lua",
        ["tersen.main"]         = "tersen/main.lua",
        ["tersen.oops"]         = "tersen/oops.lua",
        ["tersen.tersen"]       = "tersen/tersen.lua",
        ["tersen.trace"]        = "tersen/trace.lua",
        ["tersen.util"]         = "tersen/util.lua",
        ["tersen.extend.annot"] = "tersen/extend/annot.lua",
        ["tersen.extend.hooks"] = "tersen/extend/hooks.lua",
    }
}
