package = "lsm"
version = "0.4-13"
source = {
    url = "git://github.com/jdev6/lsm"
}
description = {
    summary = "Toy programming language written in lua.",
    detailed = [[
This is a programming language made just for fun,
don't take it seriously. It tries to imitate
assembly's look and feel while being an interpreted
language (hence lsm -> luassembly)
]],
    maintainer = "jdev6",
    homepage = "https://github.com/jdev6/lsm",
    license = "MIT"
}
dependencies = {
    platforms = {
        posix = {
            "lua = 5.3",
            "luaposix >= 33.3.1-1"
        },

        windows = {
            "lua = 5.3"
        }
    }
}

build = {
    type = "builtin",
    modules = {
        ["lsm.inspect"] = "src/inspect.lua",
        ["lsm.init"]    = "src/init.lua",
        ["lsm.util"]    = "src/util.lua",
        ["lsm.lex"]     = "src/lex.lua",
        ["lsm.parse"]   = "src/parse.lua",
        ["lsm.exec"]    = "src/exec.lua",
        ["lsm.calls"]   = "src/calls.lua"
    },

    install = {
        bin = {"bin/lsm"}
    }
}