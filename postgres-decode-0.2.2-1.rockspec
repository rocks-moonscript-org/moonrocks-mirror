rockspec_format = "3.0"
package = "postgres-decode"
version = "0.2.2-1"
source = {
    url = "git+https://github.com/mah0x211/lua-postgres-decode.git",
    tag = "v0.2.2",
}
description = {
    summary = "A set of decoding functions for PostgreSQL output data types.",
    homepage = "https://github.com/mah0x211/lua-postgres-decode",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.4.0",
    "lauxhlib >= 0.5.0",
}
build_dependencies = {
    "luarocks-build-hooks >= 0.8.0",
}
build = {
    type = "hooks",
    before_build = "$(extra-vars)",
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        POSTGRES_DECODE_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["postgres.decode.array"] = {
            sources = "src/array.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.bit"] = {
            sources = "src/bit.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.bool"] = {
            sources = "src/bool.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.box"] = {
            sources = "src/box.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.bytea"] = {
            sources = "src/bytea.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.circle"] = {
            sources = "src/circle.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.date"] = {
            sources = "src/date.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.float"] = {
            sources = "src/float.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.hstore"] = {
            sources = "src/hstore.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.int"] = {
            sources = "src/int.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.line"] = {
            sources = "src/line.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.lseg"] = {
            sources = "src/lseg.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.multirange"] = {
            sources = "src/multirange.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.path"] = {
            sources = "src/path.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.point"] = {
            sources = "src/point.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.polygon"] = {
            sources = "src/polygon.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.range"] = {
            sources = "src/range.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.time"] = {
            sources = "src/time.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.timestamp"] = {
            sources = "src/timestamp.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
        ["postgres.decode.tsvector"] = {
            sources = "src/tsvector.c",
            incdirs = {
                "$(DEP_ERRNO_INCDIR)",
                "$(DEP_LAUXHLIB_INCDIR)",
            },
        },
    },
}
