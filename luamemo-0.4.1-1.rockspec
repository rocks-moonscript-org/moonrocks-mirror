rockspec_format = "3.0"
package = "luamemo"
version = "0.4.1-1"

source = {
    url = "git+https://github.com/kaio326/luamemo.git",
    tag = "v0.4.1",
}

description = {
    summary  = "Persistent semantic memory + codebase index for AI agents — works in any Lua 5.1+ environment",
    detailed = [[
        luamemo is a persistent semantic memory store for AI agents
        and conversational apps. It works in any Lua 5.1+ runtime:
        plain Lua, LuaJIT, Lapis / OpenResty, CLI scripts, background
        workers — no framework dependency.

        Features:
          * Hybrid vector + full-text retrieval over PostgreSQL. The
            candidate pool is the union of the vector-nearest rows AND the
            top full-text matches, so lexical hits are found regardless of
            vector distance (and FTS-only rows with no embedding are found).
          * Natural-language temporal retrieval: queries like "last month",
            "in June", "last spring", "in 2024", "recently", "yesterday"
            are parsed into time windows and fused via RRF (Reciprocal Rank
            Fusion) with the vector + FTS legs. Zero new external deps.
          * Three-tier ANN search: pgvector HNSW (O(log N)), LSH index
            (pure Lua, auto-activates at >10k rows per scope, ~O(N^0.9)),
            and brute-force REAL[] (always available, zero extension dep).
          * Codebase index (luamemo.index): indexes a whole repository into
            queryable memory rows (file / symbol / dependency / diff), under
            "codeindex:<project>" scopes. Pure-Lua pattern parsers for Lua,
            Python and JavaScript/TypeScript; optional universal-ctags
            enrichment for any other language when the `ctags` binary is
            present (graceful fallback when absent). Cross-file dependency
            graph mirrored into the knowledge graph for one-hop "who
            calls / what does it call" traversal (index.explore). File rows
            are stored FTS-only (no embedding) to bound embed cost.
            `memo index ingest|update|search|status|invalidate|diff|explore`.
          * Pluggable embedders: an in-process "gguf_ffi" embedder that runs
            EmbeddingGemma via a LuaJIT-FFI shim over llama.cpp (bge-m3-class
            recall on CPU, no sidecar; recommended by `memo calibrate` when the
            host can build it), OpenAI-compatible HTTP endpoints (OpenAI or any
            self-hosted vLLM / LM Studio / TEI), Ollama, Voyage, Cohere,
            DeepSeek, Anthropic, generic HTTP, and a built-in pure-Lua "hash"
            embedder with no external dependencies. The native shim's C source
            and build script now ship in the LuaRocks package (previously
            omitted) and locate their build output correctly regardless of
            install layout.
          * Learns from usage (opt-in, feedback_enabled): reinforcements +
            retrieval-miss detection feed a pure-Lua learned reranker/projection;
            a per-scope promotion harness (`memo learn <scope>`) trains and
            gated-promotes weights (versioned in lm_learner_weights with rollback
            + lm_promotion_runs audit) only when they beat a held-out gate.
            Signal capture via `memo sense` / the memory_sense MCP tool. Base
            models stay frozen; only small learned layers adapt.
          * Self-maintaining: a debounced auto-digest piggybacks on writes
            (auto_digest_enabled) so tier promotion / consolidation / decay run
            without an external trigger. Hierarchical multi-scope search:
            store.search{scopes={...}} unions scopes with tier-priority.
          * Pluggable rerankers (Ollama, OpenAI, cross-encoder via TEI, and a
            per-scope learned reranker trained from usage).
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
            via luamemo.async (pure-Lua coroutine scheduler). Per-row
            no_embed flag skips embedding for lexical-only rows.
          * MCP server bundled (mcp/server.lua, 22 tools) so models can
            read/write memory, execute secrets, query the codebase index
            (index_search / index_outline / index_explore / index_status), AND
            feed the learn-from-usage loop (memory_sense) directly through
            Model Context Protocol. Direct DB access via
            MEMO_DB_URL — no HTTP intermediary required. The server
            self-locates its bundled modules from its own path (no LUA_PATH
            needed).
          * MCP prompts capability: built-in session_start prompt instructs
            any MCP client to load context at session start, write decisions
            during work, and summarise at the end. Includes proactive security
            guidance: agents are instructed to recommend the terminal workflow
            for storing secrets rather than asking users to type credentials
            in chat.
          * Session digest (`memo brief`): a tiny, fail-soft session-start
            summary (memory count + codebase-map size + tool hints) designed
            to be injected automatically by a SessionStart hook so an agent
            knows what persistent context exists without being asked.
          * luamemo.patterns: preference/habit extraction — scans write()
            bodies for first-person signals and inserts synthetic companion
            memories. Query-time person-name and quoted-phrase boosts.
          * `memo` CLI: write, search, recent, get, update, delete,
            summarize, promote, context, brief, consolidate, digest, sense,
            learn, index (ingest/update/search/status/invalidate/diff/explore),
            secret-store/list/delete/execute, migrate,
            calibrate (host probe + codebase ingest), doctor (corpus health;
            now bootstraps from the environment like every other subcommand —
            --setup PATH is optional, not required), setup (first-run
            SETUP_CHECK file for agent-guided onboarding), ping (DB + table +
            embedder connectivity, now including local embedders via selftest).
          * `memo calibrate`: probes host (GPU, Docker, Ollama, RAM),
            recommends the best-fit embedder, auto-applies schema migrations
            when the DB is incomplete (Phase 2.5), detects VS Code / Cursor /
            Claude Desktop and offers to write MCP config (Phase 5) — the MCP
            config phase now runs non-interactively when stdin isn't a
            terminal instead of exiting silently. Auto-derived MEMO_DB_URL and
            probe-recommended embedder vars (including MEMO_EMBED_MAX_CHARS,
            now actually honoured by the CLI write/search path) are persisted
            to .luamemorc (write-if-absent). Flags: --no-migrate (skip schema
            check), --no-mcp (skip IDE detection), --keep-embedder (preserve
            existing embedder config in .luamemorc).
          * `memo setup`: creates a SETUP_CHECK file in the project root with
            agent-readable first-run verification steps. Deleted automatically
            by `memo calibrate` on successful completion.
          * `memo doctor`: corpus health report with truncation counts,
            p95 row size, and backend scale warnings.
          * luamemo.cli.ping: connectivity check (DB + table + embedder).
          * luamemo.cli.api: single-operation Lua dispatcher — CLI and
            MCP server use direct lib calls; no HTTP server dependency.
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
                   "tei", "bge-m3", "secrets", "lsh", "async", "temporal",
                   "code-index", "code-search", "ctags" },
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
        ["luamemo.feedback"]           = "luamemo/feedback.lua",
        ["luamemo.sensing"]            = "luamemo/sensing/init.lua",
        ["luamemo.sensing.heuristics"] = "luamemo/sensing/heuristics.lua",
        ["luamemo.sensing.generate"]   = "luamemo/sensing/generate.lua",
        ["luamemo.sensing.extract"]    = "luamemo/sensing/extract.lua",
        ["luamemo.patterns"]           = "luamemo/patterns.lua",
        ["luamemo.routes"]             = "luamemo/routes.lua",
        ["luamemo.hooks"]              = "luamemo/hooks.lua",
        ["luamemo.kg"]                 = "luamemo/kg.lua",
        ["luamemo.lsh"]                = "luamemo/lsh.lua",
        ["luamemo.rerank"]             = "luamemo/rerank.lua",
        ["luamemo.rerank_train"]       = "luamemo/rerank_train.lua",
        ["luamemo.projection_train"]   = "luamemo/projection_train.lua",
        ["luamemo.learner_store"]      = "luamemo/learner_store.lua",
        ["luamemo.promote"]            = "luamemo/promote.lua",
        ["luamemo.secrets"]            = "luamemo/secrets.lua",
        ["luamemo.crypto"]             = "luamemo/crypto.lua",
        ["luamemo.summarizer"]         = "luamemo/summarizer.lua",
        ["luamemo.tune_weights"]       = "luamemo/tune_weights.lua",
        ["luamemo.util"]               = "luamemo/util.lua",
        ["luamemo.adapters.ollama"]    = "luamemo/adapters/ollama.lua",
        ["luamemo.adapters.openai_compatible"] = "luamemo/adapters/openai_compatible.lua",
        ["luamemo.adapters.openai"]    = "luamemo/adapters/openai.lua",
        ["luamemo.adapters.generic"]   = "luamemo/adapters/generic.lua",
        ["luamemo.adapters.voyage"]    = "luamemo/adapters/voyage.lua",
        ["luamemo.adapters.cohere"]    = "luamemo/adapters/cohere.lua",
        ["luamemo.adapters.anthropic"] = "luamemo/adapters/anthropic.lua",
        ["luamemo.adapters.deepseek"]  = "luamemo/adapters/deepseek.lua",
        ["luamemo.adapters.tei"]       = "luamemo/adapters/tei.lua",
        ["luamemo.embedders.hash"]     = "luamemo/embedders/hash.lua",
        ["luamemo.embedders.hash_learned"] = "luamemo/embedders/hash_learned.lua",
        ["luamemo.embedders.projected"]    = "luamemo/embedders/projected.lua",
        ["luamemo.embedders.gguf_ffi"]    = "luamemo/embedders/gguf_ffi.lua",
        ["luamemo.embedders.native.ffi_shim"] = "luamemo/embedders/native/ffi_shim.lua",
        ["luamemo.rerankers.noop"]          = "luamemo/rerankers/noop.lua",
        ["luamemo.rerankers.ollama"]        = "luamemo/rerankers/ollama.lua",
        ["luamemo.rerankers.openai"]        = "luamemo/rerankers/openai.lua",
        ["luamemo.rerankers.cross_encoder"] = "luamemo/rerankers/cross_encoder.lua",
        ["luamemo.rerankers.learned"]       = "luamemo/rerankers/learned.lua",
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
        ["luamemo.cli.index"]          = "luamemo/cli/index.lua",
        ["luamemo.cli._common"]        = "luamemo/cli/_common.lua",
        -- Codebase index subsystem
        ["luamemo.index"]                    = "luamemo/index/init.lua",
        ["luamemo.index.walker"]             = "luamemo/index/walker.lua",
        ["luamemo.index.parser"]             = "luamemo/index/parser.lua",
        ["luamemo.index.checksum"]           = "luamemo/index/checksum.lua",
        ["luamemo.index.differ"]             = "luamemo/index/differ.lua",
        ["luamemo.index.resolver"]           = "luamemo/index/resolver.lua",
        ["luamemo.index.digester"]           = "luamemo/index/digester.lua",
        ["luamemo.index.format"]             = "luamemo/index/format.lua",
        ["luamemo.index.ctags"]              = "luamemo/index/ctags.lua",
        ["luamemo.index.parsers.common"]     = "luamemo/index/parsers/common.lua",
        ["luamemo.index.parsers.lua"]        = "luamemo/index/parsers/lua.lua",
        ["luamemo.index.parsers.python"]     = "luamemo/index/parsers/python.lua",
        ["luamemo.index.parsers.javascript"] = "luamemo/index/parsers/javascript.lua",
    },
    install = {
        bin = { ["memo"] = "cli/memo" },
    },
    -- luamemo/embedders/native ships gguf_shim.c + build.sh (source for the
    -- in-process gguf_ffi embedder's native shim — NOT auto-compiled by
    -- LuaRocks; built on demand via build.sh, which self-locates its output
    -- next to the installed ffi_shim.lua regardless of where this directory
    -- lands on disk). gguf_shim.so itself is never shipped (build artifact,
    -- host/arch specific) — see .gitignore. (v0.4.1 fix: previously omitted
    -- entirely, so the in-process embedder could not be built from a stock
    -- `luarocks install`.)
    copy_directories = { "examples", "mcp", "luamemo/embedders/native" },
}
