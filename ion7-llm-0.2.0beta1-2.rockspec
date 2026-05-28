package = "ion7-llm"
version = "0.2.0beta1-2"

source = {
    url = "git+https://github.com/Ion7-Labs/ion7-llm.git",
    tag = "v0.2.0-beta1",
}

description = {
    summary  = "Chat pipeline + multi-session inference orchestration on top of ion7-core",
    detailed = [[
        ion7-llm v0.2 — high-level chat pipeline built on ion7-core.

        - Per-seq KV snapshots, prefix cache, slot pool, fork.
        - Engine (single-session) + Pool (N concurrent sessions, one
          batch per tick, ~6× aggregate speedup over sequential).
        - Mid-generation eviction (sessions keep generating past n_ctx).
        - RadixAttention exact-match prefix cache (warm-start identical
          prompts), Y-Token sink hook for dynamic attention sinks.
        - 4-channel streaming : content / thinking / tool_call_delta /
          tool_call_done / stop. Format-aware tool extraction (OpenAI,
          Qwen, Mistral, Hermes).
        - Interleaved-thinking-aware tool loop, reasoning budget,
          dedicated embedding pipeline.
        - Structured output is delegated to ion7-grammar (build the
          sampler there, pass it through engine:chat opts.sampler).
    ]],
    homepage = "https://github.com/Ion7-Labs/ion7-llm",
    license  = "MIT",
}

dependencies = {
    "lua >= 5.1",
    "ion7-core >= 0.1.0beta4",
    -- ion7-core declares lua-cjson as a transitive dep, so the JSON
    -- helpers ion7-llm imports via `require "ion7.vendor.json"` resolve
    -- without an explicit re-declaration here.
    --
    -- Optional : ion7-grammar for JSON-Schema / regex / ABNF / EBNF /
    -- type-driven constrained sampling. Install with :
    --   luarocks install ion7-grammar
}

build = {
    type    = "builtin",
    modules = {
        ["ion7.llm"]                       = "src/ion7/llm/init.lua",
        ["ion7.llm.engine"]                = "src/ion7/llm/engine.lua",
        ["ion7.llm.pool"]                  = "src/ion7/llm/pool.lua",
        ["ion7.llm.session"]               = "src/ion7/llm/session.lua",
        ["ion7.llm.response"]              = "src/ion7/llm/response.lua",
        ["ion7.llm.embed"]                 = "src/ion7/llm/embed.lua",
        ["ion7.llm.stop"]                  = "src/ion7/llm/stop.lua",
        ["ion7.llm.kv"]                    = "src/ion7/llm/kv/init.lua",
        ["ion7.llm.kv.slots"]              = "src/ion7/llm/kv/slots.lua",
        ["ion7.llm.kv.prefix"]             = "src/ion7/llm/kv/prefix.lua",
        ["ion7.llm.kv.snapshot"]           = "src/ion7/llm/kv/snapshot.lua",
        ["ion7.llm.kv.eviction"]           = "src/ion7/llm/kv/eviction.lua",
        ["ion7.llm.kv.radix"]              = "src/ion7/llm/kv/radix.lua",
        ["ion7.llm.chat.template"]         = "src/ion7/llm/chat/template.lua",
        ["ion7.llm.chat.thinking"]         = "src/ion7/llm/chat/thinking.lua",
        ["ion7.llm.chat.parse"]            = "src/ion7/llm/chat/parse.lua",
        ["ion7.llm.chat.stream"]           = "src/ion7/llm/chat/stream.lua",
        ["ion7.llm.chat.tool_stream"]      = "src/ion7/llm/chat/tool_stream.lua",
        ["ion7.llm.sampler.profiles"]      = "src/ion7/llm/sampler/profiles.lua",
        ["ion7.llm.sampler.budget"]        = "src/ion7/llm/sampler/budget.lua",
        ["ion7.llm.tools.spec"]            = "src/ion7/llm/tools/spec.lua",
        ["ion7.llm.tools.loop"]            = "src/ion7/llm/tools/loop.lua",
        ["ion7.llm.util.messages"]         = "src/ion7/llm/util/messages.lua",
        ["ion7.llm.util.partial_json"]     = "src/ion7/llm/util/partial_json.lua",
        ["ion7.llm.util.log"]              = "src/ion7/llm/util/log.lua",
    },
}
