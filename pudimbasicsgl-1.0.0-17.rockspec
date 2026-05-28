rockspec_format = "3.0"

package = "PudimBasicsGl"
version = "1.0.0-17"

source = {
    url = "https://github.com/pessoa736/PudimBasicsOpenGL/archive/refs/tags/v1.0.0-17.tar.gz",
    tag = "v1.0.0-17",
    dir = "PudimBasicsOpenGL-1.0.0-17"
}

description = {
    summary = "PudimBasicsGl - Pudim Basics OpenGL",
    detailed = [[
        A minimal 2D graphics library for Lua using OpenGL.

        Changes in 1.0.0-17:
        - feat: add automatic batch flushing system (removes need for manual pb.renderer.flush calls)
        - feat: add UI module (immediate mode GUI with buttons, sliders, panels, labels)
        - feat: add math module for vectors and utilities (lerp, clamp, constants)
        - feat: add studio module for file operations (list directories, file copies)
        - feat: texture loading with colorkey (chroma key) support
        - fix: robust testing suite with 260+ tests and comprehensive markdown documentation
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
                "src/render/shader.c",
                "src/render/ui.c",
                "src/audio/audio.c",
                "src/core/lua_window.c",
                "src/core/lua_renderer.c",
                "src/core/lua_time.c",
                "src/core/lua_texture.c",
                "src/core/lua_input.c",
                "src/core/lua_audio.c",
                "src/core/lua_text.c",
                "src/core/lua_camera.c",
                "src/core/lua_shader.c",
                "src/core/lua_math.c",
                "src/core/lua_studio.c",
                "src/core/lua_ui.c",
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
