rockspec_format = "3.0"
package = "matchigo-lua"
version = "1.2.0-1"

source = {
    url = "git+https://github.com/SUP2Ak/matchigo-lua.git",
    tag = "v1.2.0",
}

description = {
    summary  = "Pattern matching for Lua — composable P.* primitives, optional Rust-style DSL, compiled dispatcher.",
    detailed = [[
matchigo-lua is a pattern-matching engine for Lua. Two API surfaces
share one compile model :

  * P.* primitives — immutable, composable pattern descriptors
    (P.string, P.between(0, 100), P.tuple(...), P.intersection(...),
    P.array(...), P.shape{...}, P.select("label"), and more).
  * DSL strings — Rust-style match arms parsed once and compiled to
    the same P.* descriptors. Zero runtime overhead versus hand-written P.

Quick taste :

    local m = require("matchigo")
    local P = m.P

    -- Predicate dispatch
    m.isMatching(P.string, "hi")       --> true
    m.isMatching({ kind = "click" },
                 { kind = "click", x = 5 })  --> true

    -- Compiled dispatcher (O(1) hash on literal rules)
    local route = m.compile({
        { with = "GET",  handler = function() return list_handler   end },
        { with = "POST", handler = function() return create_handler end },
        { otherwise     = function() return method_not_allowed       end },
    })
    route("GET")(request)

    -- DSL via the chained matcher
    local handle = m.matcher({ Num = P.number })
        :with("{ user: { age: Num as a } } if a >= 18",
              function(b) return "adult:" .. b.a end)
        :with("[head, ...tail] if head == 'rm'",
              function(b) return rm(b.tail) end)
        :otherwise(function() return nil end)

How it stays fast :

  * Tests baked at pattern construction (every P.* node carries its own
    _test closure ; no central tag-dispatch table at call time).
  * Literal-only rule lists collapse to a pure hash lookup at compile.
  * Plain shape tests are weak-cached across rule reuse.
  * Chained matcher lazy-compiles on first dispatch.
  * DSL strings are AST-cached ; re-parsing the same source is free.

Tested on Lua 5.1 / 5.2 / 5.3 / 5.4 and LuaJIT 2.1. Zero external
dependencies. Reproducible benchmarks against native if/elseif chains
and t[key] lookup tables ship with the repo (see bench/results/matrix.md
on GitHub).

Full documentation, full bench results, the DSL grammar reference, and
worked examples live on GitHub — start at the homepage URL.
]],
    homepage   = "https://github.com/SUP2Ak/matchigo-lua",
    license    = "MIT",
    maintainer = "SUP2Ak <cormier.wesley@gmail.com>",
    labels     = { "pattern-matching", "dsl", "dispatch", "match" },
    issues_url = "https://github.com/SUP2Ak/matchigo-lua/issues",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ["matchigo"]                = "matchigo/init.lua",
        ["matchigo.match"]          = "matchigo/match.lua",
        ["matchigo.matcher"]        = "matchigo/matcher.lua",
        ["matchigo.compile"]        = "matchigo/compile.lua",
        ["matchigo.walk"]           = "matchigo/walk.lua",
        ["matchigo.p"]              = "matchigo/p.lua",
        ["matchigo.parsePattern"]   = "matchigo/parsePattern.lua",
        ["matchigo.types.bigint"]   = "matchigo/types/bigint.lua",
        ["matchigo.types.map"]      = "matchigo/types/map.lua",
        ["matchigo.types.set"]      = "matchigo/types/set.lua",
        ["matchigo.dsl.ast"]        = "matchigo/dsl/ast.lua",
        ["matchigo.dsl.lexer"]      = "matchigo/dsl/lexer.lua",
        ["matchigo.dsl.parser"]     = "matchigo/dsl/parser.lua",
        ["matchigo.dsl.eval"]       = "matchigo/dsl/eval.lua",
        ["matchigo.dsl.compile"]    = "matchigo/dsl/compile.lua",
        ["matchigo.util.compat"]    = "matchigo/util/compat.lua",
    },
    copy_directories = { "docs", "types" },
}

test = {
    type    = "command",
    command = "lua tests/run.lua",
}
