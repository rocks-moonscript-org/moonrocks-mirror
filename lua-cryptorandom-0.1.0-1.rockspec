local rockspec_revision = "1"
local package_version = "0.1.0"
local dev_branch = "master"

local is_dev_package = package_version == "dev" or
                       package_version == "scm" or
                       package_version == "cvs" or
                       package_version == "git" or
                       package_version == "svn" or
                       package_version == "hg"

package = "lua-cryptorandom"
version = package_version .. "-" .. rockspec_revision

source = {
    url = [=[git+https://github.com/luau-project/lua-cryptorandom.git]=],
    branch = is_dev_package and dev_branch or nil,
    tag = (not is_dev_package) and ("v" .. package_version) or nil
}

description = {
   homepage = [=[https://github.com/luau-project/lua-cryptorandom]=],
   summary = [[Generate cryptographically secure pseudo random numbers for Lua]],
   detailed = [=[
lua-cryptorandom is a lightweight, native library for Lua aimed to generate cryptographically secure pseudo random numbers, using trusted sources of randomness provided by the operating system.

Visit the repository for more information.]=],
   license = "MIT"
}

dependencies = {
    "lua >= 5.1"
}

local function openssl_external_dependencies()
    return {
        ["CRYPTO"] = {
            header = "openssl/rand.h"
        }
    }
end

external_dependencies = {
    platforms = {
        freebsd = openssl_external_dependencies(),
        openbsd = openssl_external_dependencies(),
        dragonfly = openssl_external_dependencies(),
        solaris = openssl_external_dependencies(),
        cygwin = openssl_external_dependencies(),
        netbsd = openssl_external_dependencies(),
        haiku = openssl_external_dependencies(),
        linux = openssl_external_dependencies()
    }
}

local function build_plat(plat)
    if (plat == "macos" or plat == "macosx") then
        return {
            type = "builtin",
            modules = {
                ["lua-cryptorandom"] = {
                    sources = { "src/lua-cryptorandom.c" },
                    libraries = { },
                    defines = { "LUA_CRYPTORANDOM_BUILD_SHARED", "LUA_CRYPTORANDOM_USE_APPLE" },
                    incdirs = { "src" },
                    libdirs = { }
                }
            }
        }
    elseif (plat == "windows") then
        return {
            type = "builtin",
            modules = {
                ["lua-cryptorandom"] = {
                    sources = { "src/lua-cryptorandom.c" },
                    libraries = { "bcrypt" },
                    defines = { "LUA_CRYPTORANDOM_BUILD_SHARED", "LUA_CRYPTORANDOM_USE_WIN32" },
                    incdirs = { "src" },
                    libdirs = { }
                }
            }
        }
    elseif (plat == "openssl") then
        return {
            type = "builtin",
            modules = {
                ["lua-cryptorandom"] = {
                    sources = { "src/lua-cryptorandom.c" },
                    libraries = { "crypto" },
                    defines = { "LUA_CRYPTORANDOM_BUILD_SHARED", "LUA_CRYPTORANDOM_USE_OPENSSL" },
                    incdirs = { "src", "$(CRYPTO_INCDIR)" },
                    libdirs = { "$(CRYPTO_LIBDIR)" }
                }
            }
        }
    else
        error("Unknown platform", 2)
    end
end

build = {
    platforms = {
        freebsd = build_plat("openssl"),
        openbsd = build_plat("openssl"),
        dragonfly = build_plat("openssl"),
        solaris = build_plat("openssl"),
        cygwin = build_plat("openssl"),
        netbsd = build_plat("openssl"),
        haiku = build_plat("openssl"),
        linux = build_plat("openssl"),
        windows = build_plat("windows"),
        macos = build_plat("macos"),
        macosx = build_plat("macosx")
    }
}
