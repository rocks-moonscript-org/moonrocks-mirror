package = "typst-lua-temp"
version = "1.0.1-0"

source = {
   url = "https://github.com/Freed-Wu/typst-lua/archive/1.0.1.zip",
}

description = {
   summary = "Typst compiler bindings for Lua",
   detailed = [[
      Lua bindings for the Typst compiler
   ]],
   homepage = "https://github.com/rousbound/typst-lua",
   license = "APACHE2.0"
}

dependencies = {
   "lua >= 5.1, <= 5.5",
}

build = {
   type = "rust-mlua",
   modules = {
      ["typst"] = "typst",
   },
}
