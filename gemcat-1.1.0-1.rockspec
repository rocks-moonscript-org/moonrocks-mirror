package = "gemcat"
version = "1.1.0-1"
rockspec_format = "3.0"
source = {
   url = "git+https://codeberg.org/bcasiello/gemcat.git",
   tag = "1.1.0"
}
description = {
   summary = "Gemini page retriever",
   detailed = "Lua app to read gemini: files and write to standard output",
   homepage = "https://codeberg.org/bcasiello/gemcat",
   license = "MIT",
   issues_url = "https://codeberg.org/bcasiello/gemcat/issues",
   maintainer = "Brian Casiello <bcasiello@duck.com>"
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "gemlib >= 1.1.0",
   "penlight >= 1.4.0"
}
build = {
    type = "builtin",
    install = {
        bin = { gemcat = "bin/gemcat.lua" },
        lua = { "src/gemcat.tl" }
    },
    modules = {
        gemcat = "bin/gemcat.lua"
    }
}
