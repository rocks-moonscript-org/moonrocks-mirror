rockspec_format = "3.0"
package = "luamemo"
version = "0.2.5-2"

source = {
    url = "git+https://github.com/kaio326/luamemo.git",
    tag = "v0.2.5",
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
          * Three-tier ANN search: pgvector HNSW (O(log N)), LSH index
            (pure Lua, auto-activates at >10k rows per scope, ~O(N^0.9)),
            and brute-force REAL[] (always available, zero extension dep).
          * Pluggable embedders: Ollama, OpenAI, Voyage, Cohere, DeepSeek,
            Anthropic, generic HTTP, TEI (Hugging Face text-embeddings-
            inference), and a built-in pure-Lua "hash" embedder with no
            external dependencies.
          * Pluggable rerankers (Ollama, OpenAI, cross-encoder via TEI).
          * Background summarizer + decay/importance scoring.
          * Knowledge-graph adjunct for currently-valid facts with temporal
            validity (table: lm_kg_facts).
          * Encrypted secrets management: AES-256-CBC + HMAC-SHA256
            implemented in pure Lua (luamemo.crypto) — no lua-openssl
            required. execute_with_secret substitutes {secret} server-side
            without ever returning the raw value. Secrets stored in a JSON
            file on disk (not a DB table).
          * Batch write_many() dedup: O(1) DB queries per batch regardless
            of batch size; intra-batch cosine dedup + async parallel embedding
            via luamemo.async (pure-Lua coroutine scheduler).
          * MCP server bundled (mcp/server.lua) so models can read/write
            memory and execute secrets directly through Model Context Protocol.
            Direct DB access via MEMO_DB_URL — no HTTP intermediary required.
          * MCP prompts capability: built-in session_start prompt instructs
            any MCP client to load context at session start, write decisions
            during work, and summarise at the end.
          * `memo` CLI: write, search, recent, get, update, delete,
            summarize, promote, context, consolidate,
            secret-store/list/delete/execute, migrate,
            calibrate (host probe + codebase ingest), doctor (corpus health).
          * `memo calibrate`: probes host (GPU, Docker, Ollama, RAM),
            recommends the best-fit embedder, and ingests architectural
            decisions from agent instruction files, ADRs, README, tagged
            source comments, and git history into the memory store.
            Incremental on reruns (KG cursor tracks last ingested commit).
          * `memo doctor`: corpus health report with truncation counts,
            p95 row size, and backend scale warnings.
          * luamemo.cli.api: single-operation Lua dispatcher — CLI and
            MCP server use direct lib calls; no HTTP server dependency.

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
                   "tei", "bge-m3", "secrets", "lsh", "async" },
}

dependencies = {
    "lua >= 5.1",
    "lua-cjson >= 2.1.0",
    -- HTTP: luasocket is the portable fallback; resty.http is preferred
    -- inside OpenResty workers (non-blocking) and used automatically when
    -- present. luasec (ssl.https) is needed only for HTTPS outside OpenResty.
    "luasocket >= 3.0",
    -- Database: pgmoon is the pure-Lua PostgreSQL driver used for all
    -- direct-DB access (CLI tools, MCP server, scripts, plain-Lua apps).
    -- Connection configured via MEMO_DB_URL or individual PG* env vars.
    "pgmoon >= 1.13",
}

build = {
    type    = "builtin",
    modules = {
        ["luamemo"]                    = "luamemo/init.lua",
        ["luamemo.db"]                 = "luamemo/db.lua",
        ["luamemo.http"]               = "luamemo/http.lua",
        ["luamemo.async"]              = "luamemo/async.lua",
        ["luamemo.store"]              = "luamemo/store.lua",
        ["luamemo.embed"]              = "luamemo/embed.lua",
        ["luamemo.routes"]             = "luamemo/routes.lua",
        ["luamemo.hooks"]              = "luamemo/hooks.lua",
        ["luamemo.kg"]                 = "luamemo/kg.lua",
        ["luamemo.lsh"]                = "luamemo/lsh.lua",
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
        ["luamemo.rerankers._common"]       = "luamemo/rerankers/_common.lua",
        ["luamemo.summarizers.noop"]   = "luamemo/summarizers/noop.lua",
        ["luamemo.summarizers.ollama"] = "luamemo/summarizers/ollama.lua",
        ["luamemo.summarizers.openai"] = "luamemo/summarizers/openai.lua",
        ["luamemo.summarizers._common"] = "luamemo/summarizers/_common.lua",
        -- CLI support modules
        ["luamemo.cli.recommend"]      = "luamemo/cli/recommend.lua",
        ["luamemo.cli.probe"]          = "luamemo/cli/probe.lua",
        ["luamemo.cli.calibrate"]      = "luamemo/cli/calibrate.lua",
        ["luamemo.cli.doctor"]         = "luamemo/cli/doctor.lua",
        ["luamemo.cli.api"]            = "luamemo/cli/api.lua",
    },
    install = {
        bin = { ["memo"] = "cli/memo" },
    },
    copy_directories = { "examples", "mcp" },
}
