rockspec_format = "3.0"
package = "iuplua-cd"
version = "3.32-1"

source = {
    url = "https://github.com/fsantanna"
        .. "/iuplua-rockspec/releases/download"
        .. "/v3.32"
        .. "/iuplua-cd-3.32-Lua54_Linux515_64.tar.gz",
    dir = "iuplua-cd-3.32",
}

description = {
    summary = "CD (Canvas Draw) binding for Lua"
        .. " (Tecgraf/PUC-Rio)",
    detailed = [[
        CD (Canvas Draw) integration for IUP. Provides 2D
        drawing primitives on IUP canvases.

        This rockspec installs precompiled CD core libraries
        (v5.14) and Lua 5.4 bindings from the official
        Tecgraf distribution.

        This rock was created with AI assistance.
    ]],
    homepage = "https://cd.sourceforge.net/",
    license = "MIT",
    labels = {
        "iup", "cd", "canvas", "drawing", "tecgraf",
    },
}

supported_platforms = {
    "linux",
}

dependencies = {
    "lua >= 5.4, < 5.5",
    "iuplua == 3.32",
}

build = {
    type = "make",
    build_command = ":",
    install_target = "install",
}
