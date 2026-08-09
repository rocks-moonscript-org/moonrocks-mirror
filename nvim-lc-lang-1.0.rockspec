package = "nvim-lc-lang"
version = "1.0"
source = {
   url = "git+https://github.com/Lemon-Enterprise/lc_lang.git"
}
description = {
   detailed = "Native Neovim support for Lemon Code (`.lc`) and Lemon package specifications (`.lspec`).",
   homepage = "https://github.com/Lemon-Enterprise/lc_lang",
   license = "Apache-2.0"
}
dependencies = {
   queries = {}
}
build_dependencies = {
   queries = {}
}
build = {
   type = "builtin",
   modules = {
      ["lc_lang.config"] = "lua\\lc_lang\\config.lua",
      ["lc_lang.filetypes"] = "lua\\lc_lang\\filetypes.lua",
      ["lc_lang.format"] = "lua\\lc_lang\\format.lua",
      ["lc_lang.indent"] = "lua\\lc_lang\\indent.lua",
      ["lc_lang.init"] = "lua\\lc_lang\\init.lua",
      ["lc_lang.lsp"] = "lua\\lc_lang\\lsp.lua",
      ["lc_lang.snippets"] = "lua\\lc_lang\\snippets.lua"
   },
   copy_directories = {
      "doc"
   }
}
test_dependencies = {
   queries = {}
}
