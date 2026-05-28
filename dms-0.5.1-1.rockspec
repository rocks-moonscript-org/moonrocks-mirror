package = "dms"
version = "0.5.1-1"

source = {
  url = "git+https://gitlab.com/flo-labs/pub/dms-lua.git",
  tag = "v0.5.1",
}

description = {
  summary  = "Lua parser for DMS, a data syntax with strong typing, ordered maps, multi-line heredocs, and front-matter metadata.",
  detailed = [[
DMS (Data Meta Syntax) is a strict, indent-based data syntax with
NFC-normalized strings, multi-line heredocs, polymorphic root, front
matter, and comment-AST preservation across decode / modify / re-encode.

This is the Lua port. Public API (SPEC v0.14):
  dms.decode(src)           -> body
  dms.decode_document(src)  -> { meta, body, comments, original_forms }
  dms.encode(doc)           -> DMS source string

The legacy names `dms.parse` / `dms.parse_document` / `dms.to_dms` are
kept as deprecated thin aliases for one release (each warns once).

Tier-0 conformance: 100% on the upstream conformance corpus
(~4695 fixtures).
]],
  homepage = "https://gitlab.com/flo-labs/pub/dms-lua",
  license  = "MIT OR Apache-2.0",
  maintainer = "Filip Lopes",
}

dependencies = {
  "lua >= 5.3",
  -- luautf8 provides utf8.normalize_nfc, used to NFC-normalize source
  -- and strings per SPEC. Without it, the parser falls back to assuming
  -- inputs are already in NFC (a documented limitation).
  "luautf8",
}

build = {
  type = "builtin",
  modules = {
    dms             = "dms.lua",
    ["dms.encoder"] = "encoder.lua",
    ["dms.emitter"] = "emitter.lua",
  },
  install = {
    bin = {
      ["dms-encoder"] = "bin/dms-encoder",
    },
  },
}

-- Test deps (busted) and benchmark-only deps (lyaml, lua-tinyyaml) are
-- intentionally NOT listed under `dependencies` to keep the runtime
-- footprint minimal. Install them with:
--   luarocks install busted lyaml lua-tinyyaml
