package = "dms-c"
version = "0.5.0-1"

source = {
  url = "git+https://gitlab.com/flo-labs/pub/dms-lua.git",
  tag = "v0.5.0",
}

description = {
  summary  = "Native (C) DMS decoder for Lua — wraps the dms-c reference parser via a Lua C module.",
  detailed = [[
DMS (Data Meta Syntax) is a strict, indent-based data syntax with
NFC-normalized strings, multi-line heredocs, polymorphic root, front
matter, and comment-AST preservation across decode / modify / re-encode.

This rock is a thin Lua C module that wraps the dms-c reference parser.
Same data shape as the pure Lua port (`dms`), but decoding runs entirely
in C — comparable to lua-cjson for JSON.

Public API (SPEC v0.14):
  dms_c.decode(src)               -> body table tree
  dms_c.decode_document(src)      -> { meta, body, comments, original_forms }
  dms_c.decode_lite(src)          -> body (lite mode)
  dms_c.decode_lite_document(src) -> { meta, body, ... }
  dms_c.decode_front_matter(src)  -> meta table (or nil) — Path B prescan,
                                      O(FM-size) regardless of body size.
                                      Native Path A available as
                                      `dms_c.decode_front_matter_native`.

Legacy names `parse`, `parse_document`, `parse_lite`, `parse_lite_document`
are kept as deprecated thin aliases for one release (each warns once
on stderr the first time it's called).

The pure Lua port lives in the `dms` rock and is the round-trip emitter
source-of-truth; this rock is decode-only and intended for hot paths.
]],
  homepage = "https://gitlab.com/flo-labs/pub/dms-lua",
  license  = "MIT OR Apache-2.0",
  maintainer = "Filip Lopes",
}

dependencies = {
  "lua >= 5.3",
}

build = {
  type = "builtin",
  modules = {
    -- Lua-side wrapper that re-exports the native module and overrides
    -- `decode_front_matter` with the prescan-based Path B (cross-port
    -- consistency with dms-py / dms-rb / dms-php / dms-js — the FM
    -- block parses in O(FM-size), independent of body size).
    dms_c = "dms-c/dms_c.lua",
    -- Native (C) low-level module, loaded by the wrapper above.
    -- Renamed from `dms_c` to `dms_c_native` so the Lua wrapper can
    -- own the public `dms_c` name. Power users who want the canonical
    -- FM-only diagnostic scope can still reach the Path A entry point
    -- as `dms_c.decode_front_matter_native`.
    dms_c_native = {
      sources = {
        "dms-c/dms_c.c",
        "dms-c/dms.c",
        "dms-c/vendor/utf8proc/utf8proc.c",
      },
      incdirs   = { "dms-c", "dms-c/vendor/utf8proc" },
      defines   = { "UTF8PROC_STATIC" },
    },
  },
}
