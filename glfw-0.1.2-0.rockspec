package = "glfw"
version = "0.1.2-0"
source = {
   url = "https://github.com/starwing/lua-nanovg/archive/0.1.2.zip",
   tag = "0.1.2-0",
   dir = "lua-nanovg-0.1.2"
}
description = {
   summary = "Lua binding for GLFW",
   homepage = "https://github.com/starwing/lua-nanovg",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   platforms = {
      windows = {
         modules = {
            glfw = {
               defines = {
                  "_GLFW_WIN32",
                  "_GLFW_USE_OPENGL",
                  "_GLFW_WGL",
                  "_GLFW_BUILD_DLL"
               },
               incdirs = {
                  "glfw/include"
               },
               libraries = {
                  "gdi32",
                  "opengl32"
               },
               sources = {
                  "lua-glfw.c",
                  "glfw/src/context.c",
                  "glfw/src/init.c",
                  "glfw/src/input.c",
                  "glfw/src/monitor.c",
                  "glfw/src/vulkan.c",
                  "glfw/src/window.c",
                  "glfw/src/wgl_context.c",
                  "glfw/src/egl_context.c",
                  "glfw/src/win32_init.c",
                  "glfw/src/win32_joystick.c",
                  "glfw/src/win32_monitor.c",
                  "glfw/src/win32_time.c",
                  "glfw/src/win32_tls.c",
                  "glfw/src/win32_window.c"
               }
            }
         }
      }
   }
}
