package = "ug-lua-llm"
version = "0.1.0-1"
source = {
   -- The git+ prefix is required. With a plain https:// URL LuaRocks treats
   -- this as a file to download rather than a repository to clone, fetches
   -- something called "ug-lua-llm.git", and fails to unpack it.
   url = "git+https://github.com/unabated-games/ug-lua-llm.git",
   tag = "v0.1.0"
}
description = {
   summary = "Unified Lua client for cloud LLM APIs, local Ollama models, and OpenAI-compatible endpoints",
   detailed = [[
      ug-lua-llm gives Lua applications one interface for chat, streaming,
      tool calling, and embeddings across OpenAI, Anthropic (Claude), Google
      (Gemini), xAI (Grok), Groq, OpenRouter, DeepSeek, Mistral, and local
      Ollama models. Any service implementing the OpenAI Chat Completions API
      can be used directly, without waiting for a named adapter.

      Responses are normalized to consistent fields while the untouched
      provider payload stays available, and provider-native APIs remain
      reachable. Also includes structured and redacted errors, retries with
      exponential backoff and jitter, rate-limit handling, cancellation,
      lifecycle hooks, reasoning and extended-thinking options, configurable
      logging, and endpoint conformance checks.

      Supports Lua 5.1 through 5.4.
   ]],
   homepage = "https://github.com/unabated-games/ug-lua-llm",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "luasocket >= 3.0rc1-2",
   "dkjson >= 2.6",
   "http >= 0.4"
}
build = {
   type = "builtin",
   copy_directories = {
      "examples",
      "docs",
      "skills"
   },
   modules = {
      ["ug-lua-llm.conformance"] = "ug-lua-llm/conformance.lua",
      ["ug-lua-llm.doctor"] = "ug-lua-llm/doctor.lua",
      -- Main module
      ["ug-lua-llm"] = "ug-lua-llm/init.lua",

      -- Core modules
      ["ug-lua-llm.core.client"] = "ug-lua-llm/core/client.lua",
      ["ug-lua-llm.core.config"] = "ug-lua-llm/core/config.lua",
      ["ug-lua-llm.core.provider"] = "ug-lua-llm/core/provider.lua",
      ["ug-lua-llm.core.embeddings"] = "ug-lua-llm/core/embeddings.lua",
      ["ug-lua-llm.core.response"] = "ug-lua-llm/core/response.lua",
      ["ug-lua-llm.core.error"] = "ug-lua-llm/core/error.lua",

      -- Provider implementations
      ["ug-lua-llm.providers.openai_compatible"] = "ug-lua-llm/providers/openai_compatible.lua",
      ["ug-lua-llm.providers.openai"] = "ug-lua-llm/providers/openai.lua",
      ["ug-lua-llm.providers.claude"] = "ug-lua-llm/providers/claude.lua",
      ["ug-lua-llm.providers.grok"] = "ug-lua-llm/providers/grok.lua",
      ["ug-lua-llm.providers.groq"] = "ug-lua-llm/providers/groq.lua",
      ["ug-lua-llm.providers.openrouter"] = "ug-lua-llm/providers/openrouter.lua",
      ["ug-lua-llm.providers.gemini"] = "ug-lua-llm/providers/gemini.lua",
      ["ug-lua-llm.providers.ollama"] = "ug-lua-llm/providers/ollama.lua",
      ["ug-lua-llm.providers.deepseek"] = "ug-lua-llm/providers/deepseek.lua",
      ["ug-lua-llm.providers.mistral"] = "ug-lua-llm/providers/mistral.lua",

      -- Tools
      ["ug-lua-llm.tools.tool"] = "ug-lua-llm/tools/tool.lua",
      ["ug-lua-llm.tools.registry"] = "ug-lua-llm/tools/registry.lua",

      -- Utilities
      ["ug-lua-llm.utils.http"] = "ug-lua-llm/utils/http.lua",
      ["ug-lua-llm.utils.http_streaming"] = "ug-lua-llm/utils/http_streaming.lua",
      ["ug-lua-llm.utils.lifecycle"] = "ug-lua-llm/utils/lifecycle.lua",
      ["ug-lua-llm.utils.json"] = "ug-lua-llm/utils/json.lua",
      ["ug-lua-llm.utils.pagination"] = "ug-lua-llm/utils/pagination.lua",
      ["ug-lua-llm.utils.env"] = "ug-lua-llm/utils/env.lua",
      ["ug-lua-llm.utils.stream_helpers"] = "ug-lua-llm/utils/stream_helpers.lua",
      ["ug-lua-llm.utils.logger"] = "ug-lua-llm/utils/logger.lua",
      ["ug-lua-llm.utils.rate_limiter"] = "ug-lua-llm/utils/rate_limiter.lua",
      ["ug-lua-llm.utils.options"] = "ug-lua-llm/utils/options.lua",
      ["ug-lua-llm.utils.openai_chat_stream"] = "ug-lua-llm/utils/openai_chat_stream.lua",
   }
}
