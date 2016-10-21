package = "luabenchmark"
version = "0.9.0-2"
source = {
    url = "git://github.com/spacewander/luabenchmark",
    tag = "0.9.0"
}
description = {
    summary = "A tiny benchmark library",
    detailed = [[
        This tiny libary just provide some method help you to do benchmark for lua code.
    ]],
    homepage = "https://github.com/spacewander/luabenchmark",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        benchmarklib = {
            sources = {"benchmarklib.c"},
        }
    },
    -- Override default build options (per platform)
    platforms = {
        unix = { modules = { benchmarklib = { libraries = {"rt"} } } }
    },
}