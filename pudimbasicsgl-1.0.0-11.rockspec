package = "PudimBasicsGl"
version = "1.0.0-11"

source = {
    url = "https://github.com/pessoa736/PudimBasicsOpenGL/archive/refs/tags/v1.0.0-11.tar.gz",
    tag = "v1.0.0-11",
    dir = "PudimBasicsOpenGL-1.0.0-11"
}

description = {
    summary = "PudimBasicsGl - Pudim Basics OpenGL",
    detailed = [[
        A minimal 2D graphics library for Lua using OpenGL.

        Changes in 1.0.0-11:
        - feat: add keyboard and mouse input module (pb.input)
        - feat: add audio module with WAV/MP3/FLAC support via miniaudio (pb.audio)
        - feat: add input_demo.lua and audio_demo.lua examples
        - docs: update LSP type definitions for input and audio
        - docs: update README with input/audio API reference and credits
        - test: add keyboard, mouse and audio tests to CI
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
