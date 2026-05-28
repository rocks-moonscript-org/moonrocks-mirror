package = "PudimBasicsGl"
version = "1.0.0-9"

source = {
    url = "https://github.com/pessoa736/PudimBasicsOpenGL/archive/refs/tags/v1.0.0-9.tar.gz",
    tag = "v1.0.0-9",
    dir = "PudimBasicsOpenGL-1.0.0-9"
}

description = {
    summary = "PudimBasicsGl - Pudim Basics OpenGL",
    detailed = [[
        A minimal 2D graphics library for Lua using OpenGL.

        Changes in 1.0.0-9:
        - docs: more LSP-friendly annotations and README tips
        - examples: OOP demo annotated with qualified types
        - tests: small smoke tests for object-style API
    ]],
    homepage = "https://github.com/pessoa736/PudimBasicsOpenGL",
    license = "MIT",
    maintainer = "pessoa736 <pessoa736@github.com>"
}

dependencies = {
    "lua >= 5.4"
}

external_dependencies = {
    GLFW = {
        header = "GLFW/glfw3.h",
        library = "glfw"
    },
    GL = {
        header = "GL/gl.h",
        library = "GL"
    }
}

build = {
    type = "make",
    build_target = "all",
    install_target = "",  -- Don't use makefile's install (it uses sudo)
    build_variables = {
        CFLAGS = "$(CFLAGS) -fPIC -I$(LUA_INCDIR)"
    },
    copy_directories = { "examples", "library", "scripts" },
    install = {
        lib = {
            ["PudimBasicsGl"] = "PudimBasicsGl.so"
        },
        bin = {
            ["pbgl"] = "bin/pbgl"
        }
    }
}
