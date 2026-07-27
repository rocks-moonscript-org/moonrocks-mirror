-- causalontology-4.0.0-1.rockspec - LuaRocks metadata for the Lua binding
-- of the Causalontology standard.  Pure Lua 5.4, zero dependencies: the
-- cryptography (SHA-256, SHA-512, Ed25519) is implemented in Lua itself.

package = "causalontology"
version = "4.0.0-1"

source = {
  url = "git+https://github.com/ai-university-aiu/causalontology.git",
  -- v4.0.3, not v4.0.0. LuaRocks uploads this file, not the code: a consumer
  -- running `luarocks install causalontology` fetches whatever tag is named
  -- here. Tag v4.0.0 carries the specification-2.0.0 Lua binding, so naming it
  -- would ship two-major-versions-old code under a 4.0.0 label. v4.0.3 is the
  -- current tag on the tree that vendors the twenty-one schemas under
  -- causalontology/spec; it supersedes v4.0.2, which is left where it is
  -- because a pushed tag may already be pinned by a consumer. A rockspec that
  -- travels with a tag has to name that tag or it is not self-consistent. The
  -- publish workflow refuses to upload unless the tag named here really
  -- carries the schemas.
  tag = "v4.0.3",
  -- Every path in build.modules and build.install below is relative to this
  -- directory, and this directory is relative to whatever the fetch left
  -- behind.  LuaRocks clones a git source into a directory named after the
  -- URL's last component with ".git" removed - here "causalontology" - so the
  -- binding sits at causalontology/bindings/lua.  Without this line LuaRocks
  -- would chdir into the clone root and look for causalontology/init.lua
  -- there, find nothing, and `luarocks install causalontology` would fail
  -- outright.  ("luarocks make", run from inside bindings/lua, ignores
  -- source.dir entirely, which is why a checkout-local build never noticed.)
  dir = "causalontology/bindings/lua",
}

description = {
  summary = "The Lua binding of the Causalontology standard.",
  detailed = [[
Causalontology is a verb-first noun-hosting ontology: reality is what
happens, and things are its participants.  This binding is a faithful
port of causalontology-py: content-addressed identity over RFC 8785
canonical JSON, record-level Ed25519 signing and verification (RFC 8032,
pure Lua), schema and semantic validation over the twenty-one object
kinds, and an in-memory conformant store with materialized views,
retraction, succession lineage, and the stigmergy gap read.  Conformant
when it passes the suite (run bindings/lua/conformance.lua): 137 checks at
specification 4.0.0, of which 38 are driven by the frozen shared vector
files in conformance/vectors/ and 99 are implemented per binding.
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
  -- The twenty-one JSON Schemas are data, not modules, so they ship through
  -- build.install.lua.  LuaRocks turns a string key into a directory under the
  -- Lua tree (the last dotted component is dropped) and keeps the source file's
  -- own name for anything that is not a .lua file, so each entry below lands at
  --   <lua tree>/causalontology/spec/schema/<name>.schema.json
  -- which is exactly where causalontology/schema.lua looks for them.  Without
  -- this table the published rock carries no schemas at all and cannot
  -- validate anything standalone.
  install = {
    lua = {
      ["causalontology.spec.schema.occurrent"] =
        "causalontology/spec/schema/occurrent.schema.json",
      ["causalontology.spec.schema.causal_relation_object"] =
        "causalontology/spec/schema/causal_relation_object.schema.json",
      ["causalontology.spec.schema.continuant"] =
        "causalontology/spec/schema/continuant.schema.json",
      ["causalontology.spec.schema.realizable"] =
        "causalontology/spec/schema/realizable.schema.json",
      ["causalontology.spec.schema.stratum"] =
        "causalontology/spec/schema/stratum.schema.json",
      ["causalontology.spec.schema.bridge"] =
        "causalontology/spec/schema/bridge.schema.json",
      ["causalontology.spec.schema.cross_stratal_seam"] =
        "causalontology/spec/schema/cross_stratal_seam.schema.json",
      ["causalontology.spec.schema.port"] =
        "causalontology/spec/schema/port.schema.json",
      ["causalontology.spec.schema.conduit"] =
        "causalontology/spec/schema/conduit.schema.json",
      ["causalontology.spec.schema.quality"] =
        "causalontology/spec/schema/quality.schema.json",
      ["causalontology.spec.schema.individual"] =
        "causalontology/spec/schema/individual.schema.json",
      ["causalontology.spec.schema.token"] =
        "causalontology/spec/schema/token.schema.json",
      ["causalontology.spec.schema.state"] =
        "causalontology/spec/schema/state.schema.json",
      ["causalontology.spec.schema.token_causal_claim"] =
        "causalontology/spec/schema/token_causal_claim.schema.json",
      ["causalontology.spec.schema.attitude"] =
        "causalontology/spec/schema/attitude.schema.json",
      ["causalontology.spec.schema.predicted_occurrence"] =
        "causalontology/spec/schema/predicted_occurrence.schema.json",
      ["causalontology.spec.schema.prediction_error"] =
        "causalontology/spec/schema/prediction_error.schema.json",
      ["causalontology.spec.schema.assertion"] =
        "causalontology/spec/schema/assertion.schema.json",
      ["causalontology.spec.schema.enrichment"] =
        "causalontology/spec/schema/enrichment.schema.json",
      ["causalontology.spec.schema.retraction"] =
        "causalontology/spec/schema/retraction.schema.json",
      ["causalontology.spec.schema.succession"] =
        "causalontology/spec/schema/succession.schema.json",
    },
  },
}
