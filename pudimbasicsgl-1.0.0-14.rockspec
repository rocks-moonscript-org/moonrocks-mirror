rockspec_format = "3.0"

package = "PudimBasicsGl"
version = "1.0.0-14"

source = {
    url = "https://github.com/pessoa736/PudimBasicsOpenGL/archive/refs/tags/v1.0.0-14.tar.gz",
    tag = "v1.0.0-14",
    dir = "PudimBasicsOpenGL-1.0.0-14"
}

description = {
    summary = "PudimBasicsGl - Pudim Basics OpenGL",
    detailed = [[
        A minimal 2D graphics library for Lua using OpenGL.

        Changes in 1.0.0-14:
        - feat: add 2D camera module (position, zoom, rotation, look_at)
        - feat: camera coordinate conversion helpers (screen_to_world/world_to_screen)
        - feat: integrate camera transforms into primitive, texture, and text renderers
        - docs: add camera API to English and PT-BR READMEs and LuaLS metadata
        - test: add camera test suite
        - chore: add test launcher scripts (run_tests.sh / run_tests.bat)
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
    },
    platforms = {
        windows = {
            GLFW = {
                header = "GLFW/glfw3.h",
                library = "glfw3"
            },
            GL = {
                library = "opengl32"
            }
        }
    }
}

build = {
    type = "builtin",
    modules = {
        PudimBasicsGl = {
            sources = {
                "src/main.c",
                "src/platform/window.c",
                "src/render/renderer.c",
                "src/render/texture.c",
                "src/render/text.c",
                "src/render/camera.c",
                "src/audio/audio.c",
                "src/core/lua_window.c",
                "src/core/lua_renderer.c",
                "src/core/lua_time.c",
                "src/core/lua_texture.c",
                "src/core/lua_input.c",
                "src/core/lua_audio.c",
                "src/core/lua_text.c",
                "src/core/lua_camera.c",
                "external/glad/src/glad.c",
            },
            incdirs = {
                "external/glad/include",
                "external",
                "src",
                "$(GLFW_INCDIR)",
            },
            libdirs = {
                "$(GLFW_LIBDIR)",
                "$(GL_LIBDIR)",
            },
            libraries = { "glfw", "GL", "m", "dl", "pthread" },
        }
    },
    copy_directories = { "examples", "library", "scripts" },
    install = {
        bin = {
            ["pbgl"] = "bin/pbgl"
        }
    },
    platforms = {
        windows = {
            modules = {
                PudimBasicsGl = {
                    libraries = { "glfw3", "opengl32", "gdi32", "m" },
                }
            }
        }
    }
}
