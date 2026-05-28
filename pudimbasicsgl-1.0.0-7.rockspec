package = "PudimBasicsGl"
version = "1.0.0-7"

source = {
    url = "https://github.com/pessoa736/PudimBasicsOpenGL/archive/refs/tags/v1.0.0-7.tar.gz",
    tag = "v1.0.0-7",
    dir = "PudimBasicsOpenGL-1.0.0-7"
}

description = {
    summary = "PudimBasicsGl - Pudim Basics OpenGL",
    detailed = [[
        A minimal 2D graphics library for Lua using OpenGL.
        PudimBasicsGl focuses on the essentials: window management, 
        2D rendering, textures, and time utilities.
        
        Changes in 1.0.0-7:
        - Documentation updates: document object-style API and add example references
        - Add `examples/oop_demo.lua` demonstrating object-style API
        - Minor docs/cleanups
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
