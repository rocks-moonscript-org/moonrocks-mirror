rockspec_format = "3.0"
package = "stdfs"
version = "0.8-2"
source = {
    url = "git+https://gitlab.com/happanda/lua-stdfs.git",
    tag = "v0.8-2",
}
description = {
    labels = { "filesystem", "cpp" },
    summary = "Filesystem API from C++ std::filesystem.",
    detailed = [[
stdfs is a filesytem API library. It's made as a thin wrapper around C++ std::filesystem.
With the following design goals:
- UTF-8 paths support
- easy implementing
- wide range of API tools
- no reinventing the wheel
]],
    homepage = "https://happanda.gitlab.io/stdfs-webpage/",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "luarocks-build-extended",
}
build = {
    type = "extended",
    platforms = {
        windows = {
            modules = {
                stdfs = {
                    variables = {
                        CXXFLAG_EXTRAS = { "-std:c++17" }
                    }
                }
            }
        },
        unix = {
            modules = {
                stdfs = {
                    variables = {
                        CXXFLAG_EXTRAS = { "-std=c++17", "-fPIC", "-Wextra" },
                        LIBFLAG_EXTRAS = { "-lstdc++fs" },
                    }
                }
            }
        }
    },
    modules = {
        stdfs = {
            variables = {
                CXXFLAG_EXTRAS = { "-O2" },
            },
            incdirs = {
                "src"
            },
            sources = {
                "src/copy.cpp",
                "src/create_dir.cpp",
                "src/create_hardlink.cpp",
                "src/create_symlink.cpp",
                "src/encoding.cpp",
                "src/exists.cpp",
                "src/file_size.cpp",
                "src/file_status.cpp",
                "src/file_type.cpp",
                "src/hardlink_count.cpp",
                "src/ls.cpp",
                "src/lua_legacy.cpp",
                "src/lua_wrappers.cpp",
                "src/path.cpp",
                "src/permissions.cpp",
                "src/read_symlink.cpp",
                "src/remove.cpp",
                "src/rename.cpp",
                "src/resize_file.cpp",
                "src/space.cpp",
                "src/stat.cpp",
                "src/stdfs.cpp",
                "src/temp_dir.cpp",
                "src/work_dir.cpp",
            }
        }
    }
}