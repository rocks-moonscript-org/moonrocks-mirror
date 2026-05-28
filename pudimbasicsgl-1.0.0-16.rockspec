rockspec_format = "3.0"

package = "PudimBasicsGl"
version = "1.0.0-16"

source = {
    url = "https://github.com/pessoa736/PudimBasicsOpenGL/archive/refs/tags/v1.0.0-16.tar.gz",
    tag = "v1.0.0-16",
    dir = "PudimBasicsOpenGL-1.0.0-16"
}

description = {
    summary = "PudimBasicsGl - Pudim Basics OpenGL",
    detailed = [[
        A minimal 2D graphics library for Lua using OpenGL.

        Changes in 1.0.0-16:
        - feat: add custom GLSL shader support (pb.shader) — create, load, set uniforms, destroy
        - feat: add screen-space UI rendering (pb.renderer.begin_ui / end_ui) for HUD overlays
        - feat: add gradient rectangle (pb.renderer.rect_gradient)
        - feat: ensure renderer restores its own shader on flush (fixes shader conflicts)
        - fix: enable alpha blending in texture and text flush (transparent PNGs, text)
        - fix: window title is now strdup'd (no dangling pointer from Lua strings)
        - fix: safe glGetString fallback to "unknown" in renderer.get_info
        - fix: texture.create returns nil on malloc failure
        - docs: add shader module to LSP type definitions, READMEs (EN + PT-BR)
        - docs: add shader_demo.lua example
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
