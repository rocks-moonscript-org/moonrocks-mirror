rockspec_format = "3.0"
package = "luamemo"
version = "0.2.2-1"

source = {
    url = "git+https://github.com/kaio326/luamemo.git",
    tag = "v0.2.2",
}

description = {
    summary  = "Persistent semantic memory for AI agents — works in any Lua 5.1+ environment",
    detailed = [[
        luamemo is a persistent semantic memory store for AI agents
        and conversational apps. It works in any Lua 5.1+ runtime:
        plain Lua, LuaJIT, Lapis / OpenResty, CLI scripts, background
        workers — no framework dependency.

        Features:
          * Hybrid vector + full-text retrieval over PostgreSQL.
          * Two backends: pgvector (recommended) or pure brute-force REAL[]
            (zero extension dependency).
          * Pluggable embedders: Ollama, OpenAI, Voyage, Cohere, DeepSeek,
            Anthropic, generic HTTP, TEI (Hugging Face text-embeddings-
            inference), and a built-in pure-Lua "hash" embedder with no
            external dependencies.
          * Pluggable rerankers (Ollama, OpenAI, cross-encoder via TEI).
          * Background summarizer + decay/importance scoring.
          * Knowledge-graph adjunct (lm_kg_facts) for currently-valid
            facts with temporal validity.
          * Encrypted secrets management (lm_secrets): AES-256-CBC +
            HMAC-SHA256 implemented in pure Lua (luamemo.crypto) — no
            lua-openssl required. execute_with_secret substitutes {secret}
            server-side without ever returning the raw value.
          * MCP server bundled (mcp/server.lua) so models can read/write
            memory and execute secrets directly through Model Context Protocol.
          * `memo init` wizard: probes host (GPU, Docker, Ollama, RAM),
            asks two questions, and prints a setup({}) snippet for the
            best-fit embedder.
          * `memo doctor`: corpus health report with truncation counts,
            p95 row size, and backend scale warnings.

        Benchmarks (R@10, LongMemEval n=500):
          * hash embedder:         81.5%
          * nomic-embed-text:      83.0%
          * bge-m3 via TEI (GPU):  97.8%
    ]],
    homepage   = "https://github.com/kaio326/luamemo",
    issues_url = "https://github.com/kaio326/luamemo/issues",
    license    = "MIT",
    maintainer = "Kaio Fernandes <contact@kaiofernandes.com>",
    labels     = { "memory", "agents", "ai", "embeddings", "pgvector",
                   "rag", "lapis", "openresty", "postgresql", "mcp",
                   "tei", "bge-m3", "secrets" },
}

dependencies = {
    "lua >= 5.1",
    "lapis >= 1.8.0",
    "lua-cjson >= 2.1.0",
    -- HTTP: luasocket is the portable fallback; resty.http is preferred
    -- inside OpenResty workers (non-blocking) and used automatically when
    -- present. luasec (ssl.https) is needed only for HTTPS outside OpenResty.
    "luasocket >= 3.0",
    -- Database: pgmoon is the pure-Lua PostgreSQL driver.
    -- In OpenResty, lapis.db manages connections via the nginx pool.
    -- Outside OpenResty (CLI tools, scripts, plain-Lua apps), luamemo.db
    -- creates a direct pgmoon connection from pg_host/pg_user/... config keys
    -- or the standard PGHOST/PGUSER/... environment variables.
    "pgmoon >= 1.13",
}

build = {
    type    = "builtin",
    modules = {
        ["luamemo"]                    = "luamemo/init.lua",
        ["luamemo.db"]                 = "luamemo/db.lua",
        ["luamemo.http"]               = "luamemo/http.lua",
        ["luamemo.store"]              = "luamemo/store.lua",
        ["luamemo.embed"]              = "luamemo/embed.lua",
        ["luamemo.routes"]             = "luamemo/routes.lua",
        ["luamemo.web"]                = "luamemo/web.lua",
        ["luamemo.hooks"]              = "luamemo/hooks.lua",
        ["luamemo.kg"]                 = "luamemo/kg.lua",
        ["luamemo.rerank"]             = "luamemo/rerank.lua",
        ["luamemo.secrets"]            = "luamemo/secrets.lua",
        ["luamemo.crypto"]             = "luamemo/crypto.lua",
        ["luamemo.summarizer"]         = "luamemo/summarizer.lua",
        ["luamemo.tune_weights"]       = "luamemo/tune_weights.lua",
        ["luamemo.util"]               = "luamemo/util.lua",
        ["luamemo.adapters.ollama"]    = "luamemo/adapters/ollama.lua",
        ["luamemo.adapters.openai"]    = "luamemo/adapters/openai.lua",
        ["luamemo.adapters.generic"]   = "luamemo/adapters/generic.lua",
        ["luamemo.adapters.voyage"]    = "luamemo/adapters/voyage.lua",
        ["luamemo.adapters.cohere"]    = "luamemo/adapters/cohere.lua",
        ["luamemo.adapters.anthropic"] = "luamemo/adapters/anthropic.lua",
        ["luamemo.adapters.deepseek"]  = "luamemo/adapters/deepseek.lua",
        ["luamemo.adapters.tei"]       = "luamemo/adapters/tei.lua",
        ["luamemo.embedders.hash"]     = "luamemo/embedders/hash.lua",
        ["luamemo.rerankers.noop"]          = "luamemo/rerankers/noop.lua",
        ["luamemo.rerankers.ollama"]        = "luamemo/rerankers/ollama.lua",
        ["luamemo.rerankers.openai"]        = "luamemo/rerankers/openai.lua",
        ["luamemo.rerankers.cross_encoder"] = "luamemo/rerankers/cross_encoder.lua",
        ["luamemo.summarizers.noop"]   = "luamemo/summarizers/noop.lua",
        ["luamemo.summarizers.ollama"] = "luamemo/summarizers/ollama.lua",
        ["luamemo.summarizers.openai"] = "luamemo/summarizers/openai.lua",
        -- CLI support modules (used by `memo init` and `memo doctor`)
        ["luamemo.cli.recommend"]      = "luamemo/cli/recommend.lua",
        ["luamemo.cli.probe"]          = "luamemo/cli/probe.lua",
        ["luamemo.cli.init"]           = "luamemo/cli/init.lua",
        ["luamemo.cli.doctor"]         = "luamemo/cli/doctor.lua",
    },
    install = {
        bin = { ["memo"] = "cli/memo" },
    },
    copy_directories = { "examples", "mcp" },
}
