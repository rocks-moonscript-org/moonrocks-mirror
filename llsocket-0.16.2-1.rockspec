rockspec_format = "3.0"
package = "llsocket"
version = "0.16.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-llsocket.git",
    tag = "v0.16.2",
}
description = {
    summary = "low-level socket module",
    homepage = "https://github.com/mah0x211/lua-llsocket",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "configh >= 0.3.0",
    "errno >= 0.5.0",
    "lauxhlib >= 0.6.0",
    "iovec >= 0.5.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
}
build = {
    type = "hooks",
    before_build = {
        "$(extra-vars)",
        "$(configh)",
        "codegen.lua",
    },
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        LLSOCKET_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["llsocket"] = {
            sources = {
                "src/addrinfo.c",
                "src/cmsghdr.c",
                "src/cmsghdrs.c",
                "src/device.c",
                "src/env.c",
                "src/gcfn.c",
                "src/llsocket.c",
                "src/msghdr.c",
                "src/socket.c",
            },
            incdirs = {
                "src",
                "$(DEP_LAUXHLIB_INCDIR)",
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_IOVEC_INCDIR)",
            },
            configh = {
                output = "src/config.h",
                output_status = true,
                cc = "$(CC)",
                features = {
                    "_GNU_SOURCE",
                },
                funcs = {
                    ["sys/socket.h"] = {
                        "accept4",
                    },
                    ["sys/sendfile.h"] = {
                        "sendfile",
                    },
                },
                members = {
                    ["sys/socket.h"] = {
                        ["struct sockaddr"] = {
                            "sa_len",
                        },
                    },
                },
            },
        },
    },
}
