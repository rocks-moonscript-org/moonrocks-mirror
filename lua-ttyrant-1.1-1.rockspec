package = "Lua-TTyrant"
version = "1.1-1"
source = {
    url = "git://github.com/valeriupalos/lua-ttyrant.git"
}
description = {
    summary = "TokyoTyrant API for Lua.",
    detailed = [[
        A complete API binding exposing the functions from the
        C library of the TokyoTyrant key-value database server
        straight into Lua (i.e. it uses the Tyrant C functions
        rather than implementing the Tyrant protocol over TCP).
    ]],
    homepage = "http://github.com/valeriupalos/lua-ttyrant",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
external_dependencies = {
    LIBTOKYOTYRANT = {
        header = "tcrdb.h",
    }
}
supported_platforms = {
    "linux"
}
build = {
    type = "builtin",
    modules = {
        ttyrant = {
            incdirs = { "$(LIBTOKYOTYRANT_INCDIR)" },
            libdirs = { "$(LIBTOKYOTYRANT_LIBDIR)" },
            sources = { "src/ttyrant.c" },
            libraries = { "tokyotyrant" }
        }
    }
}
