rockspec_format = "3.0"
package = "iuplua-im"
version = "3.32-1"

source = {
    url = "https://github.com/fsantanna"
        .. "/iuplua-rockspec/releases/download"
        .. "/v3.32"
        .. "/iuplua-im-3.32-Lua54_Linux515_64.tar.gz",
    dir = "iuplua-im-3.32",
}

description = {
    summary = "IM (Image) binding for Lua"
        .. " (Tecgraf/PUC-Rio)",
    detailed = [[
        IM (Image) integration for IUP. Provides image
        loading, processing, and display on IUP dialogs.

        This rockspec installs precompiled IM core libraries
        (v3.15) and Lua 5.4 bindings from the official
        Tecgraf distribution.

        This rock was created with AI assistance.
    ]],
    homepage = "https://im.sourceforge.net/",
    license = "MIT",
    labels = {
        "iup", "im", "image", "tecgraf",
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
