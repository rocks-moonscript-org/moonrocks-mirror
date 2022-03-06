package = "LanguageDetect"
version = "0.1-1"

source = {
 url = "git://github.com/listingtg/LanguageDetect.git",
 branch = "main"
}

description = {
 summary = "Lua language detection library",
 detailed = [[
Lua spoken language detection library using n-gram
]],
 homepage = "https://github.com/listingtg/LanguageDetect",
 license = "MIT"
}

build = {
 type = "builtin",
 modules = {
  ["LanguageDetect"] = "LanguageDetect/LanguageDetect.lua",
  ["LanguageDetect.Parser"] = "LanguageDetect/Parser.lua",
  ["LanguageDetect.ISO639"] = "LanguageDetect/ISO639.lua",
  ["LanguageDetect.data.lang"] = "LanguageDetect/data/lang.lua",
  ["LanguageDetect.data.unicode_blocks"] = "LanguageDetect/data/unicode_blocks.lua",
 }
}
