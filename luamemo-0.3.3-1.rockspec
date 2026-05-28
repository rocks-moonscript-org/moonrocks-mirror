rockspec_format = "3.0"
package = "luamemo"
version = "0.3.3-1"

source = {
    url = "git+https://github.com/kaio326/luamemo.git",
    tag = "v0.3.3",
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
          * Natural-language temporal retrieval: queries like "last month",
            "in June", "last spring", "in 2024", "recently", "yesterday"
            are parsed into time windows and fused via RRF (Reciprocal Rank
            Fusion) with the vector + FTS legs. Zero new external deps.
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
            during work, and summarise at the end. Includes proactive security
            guidance: agents are instructed to recommend the terminal workflow
            for storing secrets rather than asking users to type credentials
            in chat.
          * luamemo.patterns: preference/habit extraction — scans write()
            bodies for first-person signals and inserts synthetic companion
            memories. Query-time person-name and quoted-phrase boosts.
          * `memo` CLI: write, search, recent, get, update, delete,
            summarize, promote, context, consolidate,
            secret-store/list/delete/execute, migrate,
            calibrate (host probe + codebase ingest), doctor (corpus health).
          * `memo calibrate`: probes host (GPU, Docker, Ollama, RAM),
            recommends the best-fit embedder, auto-applies schema migrations
            when the DB is incomplete (Phase 2.5), detects VS Code / Cursor /
            Claude Desktop and offers to write MCP config (Phase 5). Flags:
            --no-migrate (skip schema check), --no-mcp (skip IDE detection).
          * `memo doctor`: corpus health report with truncation counts,
            p95 row size, and backend scale warnings.
          * luamemo.cli.api: single-operation Lua dispatcher — CLI and
            MCP server use direct lib calls; no HTTP server dependency.
            Includes schema-check command (information_schema.columns
            verification of both lm_memories and lm_kg_facts tables).
          * JSON handled by luamemo.json — a portable shim that uses
            cjson.safe when available (always present in OpenResty) and
            falls back to bundled dkjson (pure Lua, MIT) otherwise. This
            means `luarocks install luamemo` never fails due to a missing
            C compiler. lua-cjson is no longer a hard dependency.

        Benchmarks (R@10, LongMemEval n=500, bruteforce backend):
          * hash embedder:         79.8%
          * nomic-embed-text:      83.0%
          * bge-m3 via TEI (GPU):  97.8%
    ]],
    homepage   = "https://github.com/kaio326/luamemo",
    issues_url = "https://github.com/kaio326/luamemo/issues",
    license    = "MIT",
    maintainer = "Kaio Fernandes <contact@kaiofernandes.com>",
    labels     = { "memory", "agents", "ai", "embeddings", "pgvector",
                   "rag", "lapis", "openresty", "postgresql", "mcp",
                   "tei", "bge-m3", "secrets", "lsh", "async", "temporal" },
}

dependencies = {
    "lua >= 5.1",
    -- lua-cjson is optional: luamemo.json tries it first (cjson is faster
    -- and always present in OpenResty), then falls back to bundled dkjson.
    -- Removing it from dependencies means `luarocks install luamemo` succeeds
    -- on minimal Alpine images and CI runners without a C compiler.
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
        ["luamemo.json"]               = "luamemo/json.lua",
        ["luamemo.vendor.dkjson"]      = "luamemo/vendor/dkjson.lua",
        ["luamemo.db"]                 = "luamemo/db.lua",
        ["luamemo.http"]               = "luamemo/http.lua",
        ["luamemo.async"]              = "luamemo/async.lua",
        ["luamemo.store"]              = "luamemo/store.lua",
        ["luamemo.embed"]              = "luamemo/embed.lua",
        ["luamemo.temporal"]           = "luamemo/temporal.lua",
        ["luamemo.consolidate"]        = "luamemo/consolidate.lua",
        ["luamemo.digest"]             = "luamemo/digest.lua",
        ["luamemo.patterns"]           = "luamemo/patterns.lua",
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
        ["luamemo.cli.ping"]           = "luamemo/cli/ping.lua",
    },
    install = {
        bin = { ["memo"] = "cli/memo" },
    },
    copy_directories = { "examples", "mcp" },
}
