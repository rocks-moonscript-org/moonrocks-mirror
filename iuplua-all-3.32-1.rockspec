rockspec_format = "3.0"
package = "iuplua-all"
version = "3.32-1"

source = {
    url = "git+https://github.com/fsantanna/iuplua-rockspec.git",
    tag = "v3.32",
}

description = {
    summary = "IUP complete bundle: core + CD + IM + GL + examples",
    detailed = [[
        Meta-package that installs all IupLua components:
        core binding, Canvas Draw, Image library, OpenGL
        canvas, and 132 official examples.

        IUP, CD, IM, and OpenGL must be installed separately.
        Precompiled binaries available at:
        https://sourceforge.net/projects/iup/files/

        This rock was created with AI assistance.
    ]],
    homepage = "https://iup.sourceforge.net/",
    license = "MIT",
    labels = {
        "iup", "gui", "toolkit", "tecgraf", "bundle",
    },
}

supported_platforms = {
    "linux", "windows",
}

dependencies = {
    "lua >= 5.4, < 5.5",
    "iuplua == 3.32",
    "iuplua-cd == 3.32",
    "iuplua-im == 3.32",
    "iuplua-gl == 3.32",
    "iuplua-examples == 0.1",
}

build = {
    type = "none",
}
