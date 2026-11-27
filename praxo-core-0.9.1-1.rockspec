package = "praxo-core"
version = "0.9.1-1"

source = {
  url = "git+https://github.com/axisvela/praxo-core.git",
  tag = "lua/v0.9.1",
}

description = {
  summary = "Embeddable, policy-governed native Lua 5.4 AI agent framework",
  detailed = [[
    PRAXO-CORE for Lua is an embeddable, MIT-licensed agent framework. This
    rock is its native Lua 5.4 Core: an agent loop with tool registration and
    dispatch, policy hooks, typed events, memory, checkpoints, context budgets,
    middleware, JSON Schema validation, plugin manifest parsing, and
    human-in-the-loop interrupt decisions.

    Features:
    - Native Lua 5.4 agent loop with tool registration and dispatch.
    - Policy hooks, explicit tool scope, HITL decisions, events, memory, context
      budgets, middleware, checkpoints, and a JSON Schema subset.
    - OpenAI-compatible, Anthropic, and Gemini adapters with SSE streaming.
    - MCP, OpenTelemetry, Harmovela, retriever, and synchronous delegation
      seams, plus caller-provided batch tool dispatch.
    - MIT-licensed and Lua standard library only.

    Examples:
    - consumer: install the published rock, then run deterministic allow/deny checks.
    - live-model: connect an OpenAI-compatible endpoint and register get_time.
    - mcp: connect MCP tools over an injected transport.
    - structured-output: validate structured output against a JSON Schema.
    - streaming: stream a response and reassemble deltas.
    - identity-policy: bind a trusted principal to policy and deny effects.
    - checkpoint: persist application-owned checkpoints with an allowlist.
    - service: run behind an HTTP request handler.
    - hitl: approve or edit a tool call before an effect.
    - session-checkpoint: resume a multi-turn session from storage.
    - retry: retry transient failures with bounded attempts.
    - provider-fallback: fall back to a secondary model after failure.
    - event-sink: observe lifecycle and tool events through a sink.
    Examples index: https://github.com/axisvela/praxo-core/tree/main/language/lua/examples

    Scenario tutorials:
    - aquaculture-water: bounded pond water-quality review with no aerator or feeder commands.
    - host-embedding: embed the Agent in an existing Lua host with fixed callbacks.
    - irrigation-plan: bounded irrigation review with no valve commands.
    - live-show: review-only presentation ordering from fixed engagement events.
    - storyboard-previs: review-only shot plan from one fixed script scene.
    - world-economy: review-only economy balance from one synthetic tick.
    Tutorials index: https://github.com/axisvela/praxo-core/tree/main/language/lua/Tutorial

    Reference applications:
    No accepted end-to-end reference application yet. Candidate goals are
    tracked at
    https://axisvela.github.io/praxo-core/project/roadmap/#reference-application-portfolio

    Install:
      luarocks install praxo-core 0.9.1-1

    Documentation:
      https://axisvela.github.io/praxo-core/languages/lua/

    Limits:
    - Core is an execution framework, not a model provider, hosted agent
      service, crawler, workflow engine, or production sandbox.
    - Parallel tools use caller-provided batch callbacks; the Core does not
      create threads.
    - Checkpoints are recovery hints, not transactions. Core does not provide
      durable execution, exactly-once effects, or an effect ledger.
    - Provider credentials, authentication, retries, and durable state remain
      application-owned.
    - Go remains the reference implementation; full Go feature parity is not
      claimed.
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
