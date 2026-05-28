package = "lua_solver"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/ynishi/lua-solver.git",
    tag = "v0.1.0",
}
description = {
    summary = "Structure + Strategy based problem-solving framework",
    detailed = [[
        lua_solver models problem-solving as Structure (immutable data types)
        + Strategy IF (swappable algorithms). It supports hypothesis generation,
        evidence evaluation, confidence tracking, gap detection, and more.
    ]],
    homepage = "https://github.com/ynishi/lua-solver",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["lua_solver"]           = "init.lua",
        ["lua_solver.structure"] = "structure.lua",
        ["lua_solver.strategy"]  = "strategy.lua",
        ["lua_solver.engine"]    = "engine.lua",
        ["lua_solver.llm"]       = "llm.lua",
    },
}
