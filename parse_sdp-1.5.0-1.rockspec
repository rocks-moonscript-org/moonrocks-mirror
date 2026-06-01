package = "parse_sdp"
version = "1.5.0-1"

source = {
  url  = "git+https://github.com/andrewstarks/parse_sdp.git",
  tag  = "v1.5.0",
}

description = {
  summary  = "Strict SDP parser, validator, and serializer for RFC 8866 / SMPTE ST 2110 / IPMX",
  detailed = [[
parse_sdp is a Lua library that parses, validates, and serializes Session
Description Protocol (SDP) documents at three conformance tiers:

  1. RFC 8866 — generic SDP well-formedness (RFC 8866 obsoletes RFC 4566)
  2. SMPTE ST 2110 — broadcast-grade media transport
  3. IPMX (VSF TR-10 suite) — interoperability profile for ST 2110

Every check is grounded in an explicit "shall" / "shall not" clause from the
referenced specification.  Validation errors carry a machine-readable error code
and a human-readable spec citation so callers can report exactly what failed and
why.

The library also ships a CLI (validate / diagnose / to_json / to_sdp / checks)
for command-line use — yes/no validation, per-tier ladder reports, JSON
round-trip, and registry inspection.
  ]],
  homepage = "https://github.com/andrewstarks/parse_sdp",
  license  = "MIT",
}

-- argparse is only used by the CLI binary at bin/parse_sdp;
-- require("parse_sdp") loads only the library and never pulls argparse in.
-- Lua 5.1/5.2 get a pure-Lua arithmetic bitops backend; no extra rock
-- is needed on any supported version (see parse_sdp/grammar/bitops.lua).
dependencies = {
  "lua >= 5.1, < 5.6",
  "lpeg",
  "dkjson",
  "argparse",
}

build = {
  type    = "builtin",
  modules = {
    parse_sdp                            = "parse_sdp/init.lua",
    ["parse_sdp.errors"]                 = "parse_sdp/errors.lua",
    ["parse_sdp.serialize"]              = "parse_sdp/serialize.lua",
    ["parse_sdp.grammar.patterns"]       = "parse_sdp/grammar/patterns.lua",
    ["parse_sdp.grammar.addresses"]      = "parse_sdp/grammar/addresses.lua",
    ["parse_sdp.grammar.bitops"]         = "parse_sdp/grammar/bitops.lua",
    ["parse_sdp.grammar.bitops_53"]      = "parse_sdp/grammar/bitops_53.lua",
    ["parse_sdp.grammar.bitops_compat"]  = "parse_sdp/grammar/bitops_compat.lua",
    ["parse_sdp.grammar.base"]           = "parse_sdp/grammar/base.lua",
    ["parse_sdp.grammar.st2110"]         = "parse_sdp/grammar/st2110.lua",
    ["parse_sdp.grammar.ipmx"]           = "parse_sdp/grammar/ipmx.lua",
  },
  install = {
    bin = {
      parse_sdp = "bin/parse_sdp",
    },
  },
}
