rockspec_format = "3.0"

package = "pikaid"
version = "1.0.0-1"

-- The v1.0.0 tag is created at release time and does not exist yet. The
-- immutable tag is recorded here so the uploaded rockspec can only ever build
-- from the reviewed release commit. `luarocks make` ignores this field and
-- builds from the local checkout, which is how CI and contributors install it
-- before the tag exists.
source = {
  url = "git+https://github.com/pikaid/pikaid-lua.git",
  tag = "v1.0.0",
}

description = {
  summary = "Official Lua implementation of pikaid identifiers",
  detailed = [[
    pikaid is a compact, chronologically sortable, collision-resistant
    identifier format. An identifier is exactly 26 lowercase Base36 characters
    (7 timestamp digits, 19 randomness digits) with a 17-byte binary
    representation (5 big-endian timestamp bytes, 12 randomness bytes).

    This module implements pikaid specification revision 1.0.4: strict
    validation, lossless text/binary conversion, and fail-closed generation
    from the operating system CSPRNG. Lua 5.3, 5.4 and 5.5 are supported.
  ]],
  homepage = "https://github.com/pikaid/pikaid-lua",
  license = "MIT",
}

dependencies = {
  "lua >= 5.3, < 5.6",
}

build = {
  type = "builtin",
  modules = {
    ["pikaid"] = "src/pikaid/init.lua",
    ["pikaid.base36"] = "src/pikaid/base36.lua",
    ["pikaid.entropy"] = "src/pikaid/entropy.lua",
  },
}
