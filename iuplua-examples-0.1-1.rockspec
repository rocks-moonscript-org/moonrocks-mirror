rockspec_format = "3.0"
package = "iuplua-examples"
version = "0.1-1"

source = {
    url = "git+https://github.com/fsantanna/iuplua-rockspec.git",
    tag = "v0.1",
}

description = {
    summary = "IupLua examples from the official IUP documentation",
    detailed = [[
        A collection of 132 Lua examples from the official IUP
        toolkit documentation (Tecgraf/PUC-Rio). Organized into
        tutorial, 7GUIs benchmark, basic guide, and per-widget
        standalone examples.

        IUP must be installed separately on your system.

        This rock was created with AI assistance.
    ]],
    homepage = "https://github.com/fsantanna/iuplua-rockspec",
    license = "MIT",
    labels = { "iup", "gui", "examples", "tecgraf" },
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "none",
    copy_directories = { "examples" },
}
