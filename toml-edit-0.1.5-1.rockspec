rockspec_format = "3.0"

package = "toml-edit"
version = "0.1.5-1"

source = {
   url = "git+https://github.com/vhyrro/toml-edit.lua"
}
description = {
   homepage = "https://github.com/vhyrro/toml-edit.lua",
   license = "MIT",
   summary = "TOML Parser + Formatting and Comment-Preserving Editor",
   detailed = [[`toml-edit` is a library to parse and edit `.toml` files as if they were lua tables, all while preserving formatting and comments.
   Based on rust's `toml-edit`.]],
   labels = { "toml" },
}

dependencies = {
    "lua >= 5.1",
    "luarocks-build-rust-mlua",
}

build = {
    type = "rust-mlua",
    modules = {
        "toml_edit"
    },
}
