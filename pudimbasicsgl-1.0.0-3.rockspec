package = "PudimBasicsGl"
version = "1.0.0-3"

source = {
    url = "https://github.com/pessoa736/PudimBasicsOpenGL/archive/refs/tags/v1.0.0-3.tar.gz",
    tag = "v1.0.0-3"
}

description = {
    summary = "PudimBasicsGl - Pudim Basics OpenGL",
    detailed = [[
        A minimal 2D graphics library for Lua using OpenGL.
        PudimBasicsGl focuses on the essentials: window management, 
        2D rendering, textures, and time utilities.
        
        Features:
        - Window management (GLFW)
        - 2D primitive rendering (points, lines, rectangles, circles, triangles)
        - Texture loading and rendering (PNG, JPG, BMP, TGA)
        - Time/delta time utilities
        
        Input handling and math utilities are intentionally excluded,
        allowing developers to choose their preferred libraries.
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
        CFLAGS = "$(CFLAGS) -fPIC -I$(LUA_INCDIR)",
        LDFLAGS = "$(LIBFLAG) -L$(LUA_LIBDIR)"
    },
    copy_directories = { "examples", "library", "lua", "scripts" },
    install = {
        lib = {
            ["PudimBasicsGl"] = "PudimBasicsGl.so"
        },
        bin = {
            ["pbgl"] = "bin/pbgl"
        }
    }
}
