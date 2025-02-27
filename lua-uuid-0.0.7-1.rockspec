package = "lua-uuid"
version = "0.0.7-1"

source = {
    url = "git://github.com/luau-project/lua-uuid.git",
    tag = "v0.0.7"
}

description = {
    homepage = "https://github.com/luau-project/lua-uuid",
    summary = [[Lightweight, native GUID / UUID library for Lua]],
    detailed = [=[
lua-uuid is a lightweight, native library for Lua (5.1 and newer) to deal with Universally Unique Id (UUID).

* On Unix-like distributions, it uses libuuid to generate UUIDs;
* On Windows, it uses the WINAPI rpcrt4 library;
* On macOS / iOS, it uses the CoreFoundation framework.

lua-uuid is implemented in pure ANSI C, and also compiles as C++.

Visit the GitHub repository for more information.]=],
    license = "MIT"
}

dependencies = {
    "lua >= 5.1"
}

external_dependencies = {
    platforms = {
        unix = {
            ["UUID"] = {
                header = "uuid/uuid.h"
            }
        },
        windows = { },
        macos = { },
        macosx = { }
    }
}

local function build_plat(plat)
    if (plat == "unix") then
        return {
            type = "builtin",
            modules = {
                ["lua-uuid"] = {
                    sources = { "src/lua-uuid.c" },
                    libraries = { "uuid" },
                    defines = { "LUA_UUID_BUILD_SHARED", "LUA_UUID_USE_LIBUUID" },
                    incdirs = { "src", "$(UUID_INCDIR)" },
                    libdirs = { "$(UUID_LIBDIR)" }
                }
            }
        }
    elseif (plat == "windows") then
        return {
            type = "builtin",
            modules = {
                ["lua-uuid"] = {
                    sources = { "src/lua-uuid.c" },
                    libraries = { "rpcrt4" },
                    defines = { "LUA_UUID_BUILD_SHARED", "LUA_UUID_USE_WIN32" },
                    incdirs = { "src" },
                    libdirs = { }
                }
            }
        }
    elseif (plat == "macos" or plat == "macosx") then
        return {
            type = "make",
            makefile = "Makefile.macosx",
            build_variables = {
                CFLAGS = "$(CFLAGS)",
                LIBFLAG = "$(LIBFLAG)",
                CFLAGS_EXTRA = "-DLUA_UUID_BUILD_SHARED -DLUA_UUID_USE_APPLE",
                LIBFLAG_EXTRA = "-framework CoreFoundation",
                LUA_INCDIR = "$(LUA_INCDIR)",
                OBJ_EXTENSION = "$(OBJ_EXTENSION)",
                LIB_EXTENSION = "$(LIB_EXTENSION)"
            },
            install_variables = {
                INSTALL_PREFIX = "$(PREFIX)",
                INSTALL_LIBDIR = "$(LIBDIR)",
                LUA_VERSION = "$(LUA_VERSION)",
                LIB_EXTENSION = "$(LIB_EXTENSION)"
            }
        }
    else
        error("Unknown platform", 2)
    end
end

build = {
    platforms = {
        unix = build_plat("unix"),
        windows = build_plat("windows"),
        macos = build_plat("macos"),
        macosx = build_plat("macosx")
    }
}
