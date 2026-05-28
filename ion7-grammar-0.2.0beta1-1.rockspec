package = "ion7-grammar"
version = "0.2.0beta1-1"
source  = { url = "git+https://github.com/Ion7-Labs/ion7-grammar.git", tag = "v0.2.0-beta1" }
description = {
    summary  = "Grammar engine for LuaJIT — GBNF, ABNF, EBNF, JSON Schema, regex",
    detailed = [[
        Compile regex, ABNF (RFC 5234), W3C-style EBNF, JSON Schema, or
        Lua type annotations to GBNF — then constrain LLMs to valid
        output by construction. Includes a stateful GrammarContext, a
        per-seq KV-rollback Backtrack runtime (IterGen / CRANE), DCCD
        (Draft-Conditioned Constrained Decoding, arXiv:2603.03305), a
        pure-Lua fuzzer, and grammar diff / inspect / tree helpers.
        Multi-tenant safe : Backtrack and DCCD operate on a single
        seq id so they drop into ion7-llm's Pool without disturbing
        other sessions.
    ]],
    homepage = "https://github.com/Ion7-Labs/ion7-grammar",
    license  = "MIT-or-later",
}
dependencies = {
    "lua >= 5.1",
    "lpeg >= 1.0",
    -- ion7-core ships the FFI bridge used by `from_json_schema_native`,
    -- the runtime objects (Backtrack, DCCD), and the `ion7.vendor.json`
    -- wrapper consumed by `from_auto` / `tool_pipeline`. lua-cjson is
    -- pulled transitively.
    "ion7-core >= 0.1.0beta2",
}
build = {
    type = "builtin",
    modules = {
        ["ion7.grammar"]                       = "src/ion7/grammar/init.lua",
        ["ion7.grammar.grammar_obj"]           = "src/ion7/grammar/grammar_obj.lua",
        ["ion7.grammar.compose"]               = "src/ion7/grammar/compose.lua",
        ["ion7.grammar.except"]                = "src/ion7/grammar/except.lua",
        ["ion7.grammar.ast"]                   = "src/ion7/grammar/ast/init.lua",
        ["ion7.grammar.ast.nodes"]             = "src/ion7/grammar/ast/nodes.lua",
        ["ion7.grammar.ast.builder"]           = "src/ion7/grammar/ast/builder.lua",
        ["ion7.grammar.ast.compiler"]          = "src/ion7/grammar/ast/compiler.lua",
        ["ion7.grammar.ast.walk"]              = "src/ion7/grammar/ast/walk.lua",
        ["ion7.grammar.from.regex"]            = "src/ion7/grammar/from/regex.lua",
        ["ion7.grammar.from.abnf"]             = "src/ion7/grammar/from/abnf.lua",
        ["ion7.grammar.from.ebnf"]             = "src/ion7/grammar/from/ebnf.lua",
        ["ion7.grammar.from.json"]             = "src/ion7/grammar/from/json/init.lua",
        ["ion7.grammar.from.json.converter"]   = "src/ion7/grammar/from/json/converter.lua",
        ["ion7.grammar.from.types"]            = "src/ion7/grammar/from/types.lua",
        ["ion7.grammar.from.dynamic"]          = "src/ion7/grammar/from/dynamic.lua",
        ["ion7.grammar.runtime.context"]       = "src/ion7/grammar/runtime/context.lua",
        ["ion7.grammar.runtime.backtrack"]     = "src/ion7/grammar/runtime/backtrack.lua",
        ["ion7.grammar.runtime.dccd"]          = "src/ion7/grammar/runtime/dccd.lua",
        ["ion7.grammar.dev.debug"]             = "src/ion7/grammar/dev/debug.lua",
        ["ion7.grammar.dev.fuzz"]              = "src/ion7/grammar/dev/fuzz.lua",
    },
}
