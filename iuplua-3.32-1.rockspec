rockspec_format = "3.0"
package = "iuplua"
version = "3.32-1"

source = {
    url = "https://github.com/fsantanna"
        .. "/iuplua-rockspec/releases/download"
        .. "/v3.32"
        .. "/iuplua-3.32-Lua54_Linux515_64.tar.gz",
    dir = "iuplua-3.32",
}

description = {
    summary = "IUP Lua binding - portable GUI toolkit"
        .. " (Tecgraf/PUC-Rio)",
    detailed = [[
        IUP is a multi-platform toolkit for building
        graphical user interfaces. It uses native controls
        and has a simple API.

        This rockspec installs precompiled IUP core
        libraries and Lua 5.4 bindings from the official
        Tecgraf distribution. No manual setup required.

        This rock was created with AI assistance.
    ]],
    homepage = "https://iup.sourceforge.net/",
    license = "MIT",
    labels = {
        "iup", "gui", "toolkit", "tecgraf", "native",
    },
}

supported_platforms = {
    "linux",
}

dependencies = {
    "lua >= 5.4, < 5.5",
}

build = {
    type = "make",
    build_command = ":",
    install_target = "install",
}
