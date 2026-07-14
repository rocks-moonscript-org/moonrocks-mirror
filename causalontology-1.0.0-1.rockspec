-- causalontology-1.0.0-1.rockspec - LuaRocks metadata for the Lua binding
-- of the Causalontology standard.  Pure Lua 5.4, zero dependencies: the
-- cryptography (SHA-256, SHA-512, Ed25519) is implemented in Lua itself.

package = "causalontology"
version = "1.0.0-1"

source = {
  url = "git+https://github.com/ai-university-aiu/causalontology.git",
  tag = "v1.0.0",
}

description = {
  summary = "The Lua binding of the Causalontology standard.",
  detailed = [[
Causalontology is a verb-first noun-hosting ontology: reality is what
happens, and things are its participants.  This binding is a faithful
port of causalontology-py: content-addressed identity over RFC 8785
canonical JSON, record-level Ed25519 signing and verification (RFC 8032,
pure Lua), schema and semantic validation, and an in-memory conformant
store with materialized views, retraction, succession lineage, and the
stigmergy gap read.  Conformant when it passes every vector in
conformance/vectors/ (run bindings/lua/conformance.lua).
]],
  homepage = "https://github.com/ai-university-aiu/causalontology",
  license = "The attribution always; no profit, no problem license. (Apache License 2.0 text)",
}

dependencies = {
  -- Lua 5.4 only: the code relies on native 64-bit integers, integer
  -- division, and bitwise operators.  No external rocks at all.
  "lua >= 5.4",
}

build = {
  type = "builtin",
  modules = {
    ["causalontology"] = "causalontology/init.lua",
    ["causalontology.json"] = "causalontology/json.lua",
    ["causalontology.jcs"] = "causalontology/jcs.lua",
    ["causalontology.sha2"] = "causalontology/sha2.lua",
    ["causalontology.ed25519"] = "causalontology/ed25519.lua",
    ["causalontology.canonical"] = "causalontology/canonical.lua",
    ["causalontology.schema"] = "causalontology/schema.lua",
    ["causalontology.semantics"] = "causalontology/semantics.lua",
    ["causalontology.signing"] = "causalontology/signing.lua",
    ["causalontology.store"] = "causalontology/store.lua",
  },
}
