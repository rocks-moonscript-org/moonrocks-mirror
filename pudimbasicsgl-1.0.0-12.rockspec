package = "PudimBasicsGl"
version = "1.0.0-12"

source = {
    url = "https://github.com/pessoa736/PudimBasicsOpenGL/archive/refs/tags/v1.0.0-12.tar.gz",
    tag = "v1.0.0-12",
    dir = "PudimBasicsOpenGL-1.0.0-12"
}

description = {
    summary = "PudimBasicsGl - Pudim Basics OpenGL",
    detailed = [[
        A minimal 2D graphics library for Lua using OpenGL.

        Changes in 1.0.0-12:
        - feat: add text rendering with TrueType font support (pb.text)
        - feat: add color255(r,g,b,a) to create colors from 0-255 integers
        - feat: add color_unpack() and color255_unpack() to extract r,g,b,a
        - feat: add stb_truetype.h for font rasterization
        - feat: add text_demo.lua example
        - test: add text module tests to CI
        - docs: update LSP type definitions, READMEs (EN + PT-BR)
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
