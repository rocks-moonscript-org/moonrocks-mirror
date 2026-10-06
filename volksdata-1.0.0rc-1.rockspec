rockspec_format = "3.0"
package = "volksdata"
version = "1.0.0rc-1"

source = {
   url = "git+https://git.knowledgetx.com/scossu/volksdata_lua.git",
   tag = "v1.0rc1",
}

description = {
   summary = "Compact, minimalistic RDF library and persistent store.",
   detailed = [[
      Volksdata is an embedded library to manipulate and permanently store
      Linked Data. It handles terms, triples, graphs, and has in-memory and
      persistent storage back ends. It can encode and decode Turtle, TriG, and
      N3 syntax.
   ]],
   homepage = "http://git.knowledgetx.com/scossu/volksdata_lua",
   license =
       "https://git.knowledgetx.com/scossu/volksdata_lua/src/master/LICENSE"
}

dependencies = {
    "lua >= 5.4, < 6",
}

external_dependencies = {
    LMDB = { header = "lmdb.h" },
    XXHASH = { header = "xxhash.h" },
}

test_dependencies = {
    "u-test",
    "penlight >= 1.15, < 2",
}

build = {
    type = "make",
    build_variables = {
        LUA_CFLAGS="$(CFLAGS)",
        LUA_LDFLAGS="$(LIBFLAG)",
        LUA_INCDIR="$(LUA_INCDIR)",
    },
    install_variables = {
        PREFIX="$(PREFIX)",
        INST_LIBDIR="$(LIBDIR)",
    },
}

test = {
    type = "command",
    command = "lua run_tests.lua",
}
