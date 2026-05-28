rockspec_format = "3.0"
package = "luamigemo"
version = "1.1.1-1"
source = {
  url = "git+https://github.com/delphinus/luamigemo.git",
  tag = "v1.1.1",
}
description = {
  summary = "Pure Lua migemo engine for LuaJIT — romaji to regex converter for Japanese text search",
  detailed = [[
    A pure Lua implementation of migemo, ported from jsmigemo.
    Converts romaji input into regex patterns that match hiragana,
    katakana, and kanji — enabling Japanese incremental search
    without switching input methods. Requires LuaJIT.
  ]],
  homepage = "https://github.com/delphinus/luamigemo",
  license = "MIT",
  labels = { "neovim", "migemo", "japanese", "luajit" },
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["luamigemo"] = "lua/luamigemo/init.lua",
    ["luamigemo.bit_list"] = "lua/luamigemo/bit_list.lua",
    ["luamigemo.bit_vector"] = "lua/luamigemo/bit_vector.lua",
    ["luamigemo.character_converter"] = "lua/luamigemo/character_converter.lua",
    ["luamigemo.compact_dictionary"] = "lua/luamigemo/compact_dictionary.lua",
    ["luamigemo.compact_hiragana_string"] = "lua/luamigemo/compact_hiragana_string.lua",
    ["luamigemo.health"] = "lua/luamigemo/health.lua",
    ["luamigemo.louds_trie"] = "lua/luamigemo/louds_trie.lua",
    ["luamigemo.romaji_processor"] = "lua/luamigemo/romaji_processor.lua",
    ["luamigemo.ternary_regex_generator"] = "lua/luamigemo/ternary_regex_generator.lua",
    ["luamigemo.utils"] = "lua/luamigemo/utils.lua",
  },
  copy_directories = {
    "dict",
  },
}
