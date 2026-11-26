package = "praxo-core"
version = "0.9.0-1"

source = {
  url = "git+https://github.com/axisvela/praxo-core.git",
  tag = "lua/v0.9.0",
}

description = {
  summary = "Embeddable, policy-governed AI agent framework for Lua",
  detailed = [[
    Native Lua 5.4 Core for PRAXO-CORE: a dependency-free agent loop with tools,
    policy and HITL decisions, events, memory, context, middleware, checkpoints,
    JSON Schema, OpenAI-compatible, Anthropic, and Gemini adapters with SSE
    streaming, MCP, OpenTelemetry, Harmovela, retriever, and delegation.

    Includes a deterministic consumer allow/deny starter and examples for
    streaming, structured output, MCP, identity and policy, checkpoints, HITL,
    provider fallback, and event sinks:
    https://github.com/axisvela/praxo-core/tree/main/language/lua/examples

    Limits: an execution framework, not a hosted model, crawler, workflow
    engine, or production sandbox. Checkpoints are recovery hints, not
    transactions; provider credentials, retries, and durable state are
    caller-owned. Go remains the reference implementation.
  ]],
  homepage = "https://axisvela.github.io/praxo-core/",
  license = "MIT",
}

dependencies = {
  "lua >= 5.4",
}

build = {
  type = "builtin",
  modules = {
    ["praxo.agent"] = "language/lua/praxo/agent.lua",
    ["praxo.errors"] = "language/lua/praxo/errors.lua",
    ["praxo.json"] = "language/lua/praxo/json.lua",
    ["praxo.jsonschema"] = "language/lua/praxo/jsonschema.lua",
    ["praxo.middleware"] = "language/lua/praxo/middleware.lua",
    ["praxo.models"] = "language/lua/praxo/models.lua",
    ["praxo.openai_compatible"] = "language/lua/praxo/openai_compatible.lua",
    ["praxo.harmovela_sink"] = "language/lua/praxo/harmovela_sink.lua",
    ["praxo.adapters.openai_compatible"] = "language/lua/praxo/adapters/openai_compatible.lua",
    ["praxo.adapters.anthropic"] = "language/lua/praxo/adapters/anthropic.lua",
    ["praxo.adapters.mcp"] = "language/lua/praxo/adapters/mcp.lua",
    ["praxo.adapters.gemini"] = "language/lua/praxo/adapters/gemini.lua",
    ["praxo.adapters.harmovela_sink"] = "language/lua/praxo/adapters/harmovela_sink.lua",
    ["praxo.adapters.otel_sink"] = "language/lua/praxo/adapters/otel_sink.lua",
    ["praxo.retriever"] = "language/lua/praxo/retriever.lua",
    ["praxo.delegation"] = "language/lua/praxo/delegation.lua",
    ["praxo.plugin"] = "language/lua/praxo/plugin.lua",
    ["praxo.runtime"] = "language/lua/praxo/runtime.lua",
    ["praxo.sse"] = "language/lua/praxo/sse.lua",
    ["praxo.toolcall"] = "language/lua/praxo/toolcall.lua",
  },
}
