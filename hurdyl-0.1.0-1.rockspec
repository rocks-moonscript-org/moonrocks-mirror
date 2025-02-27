package = "hurdyl"
version = "0.1.0-1"
source = {
    url = "https://codeberg.org/apicici/hurdyl/archive/v0.1.0.tar.gz",
}
description = {
    summary = "A pure Lua port of the Hurdy library.",
    detailed = [[
        Hurdyl is a pure Lua port of the C++ library from the Hurdy rock.
    ]],
    homepage = "https://hurdy.apicici.com",
    license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
    type = 'builtin',
    modules = {
        hurdyl = "hurdyl/init.lua",
        ["hurdyl.ast"] = "hurdyl/ast.lua",
        ["hurdyl.error"] = "hurdyl/error.lua",
        ["hurdyl.expr"] = "hurdyl/expr.lua",
        ["hurdyl.main"] = "hurdyl/main.lua",
        ["hurdyl.parser"] = "hurdyl/parser.lua",
        ["hurdyl.resolver"] = "hurdyl/resolver.lua",
        ["hurdyl.scanner"] = "hurdyl/scanner.lua",
        ["hurdyl.stmt"] = "hurdyl/stmt.lua",
        ["hurdyl.target"] = "hurdyl/target.lua",
        ["hurdyl.transpiler"] = "hurdyl/transpiler.lua"
    }
}
