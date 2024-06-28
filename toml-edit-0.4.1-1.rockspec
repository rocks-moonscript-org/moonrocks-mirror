local git_ref = 'v0.4.1'
local modrev = '0.4.1'
local specrev = '1'

local repo_url = 'https://github.com/vhyrro/toml-edit.lua'

rockspec_format = '3.0'
package = 'toml-edit'
version = modrev ..'-'.. specrev

description = {
  summary = 'TOML Parser + Formatting and Comment-Preserving Editor',
  detailed = [[
`toml-edit` is a library to parse and edit `.toml` files as if they were lua tables, all while preserving formatting and comments.
Based on rust's `toml-edit`.]],
  labels = { },
  homepage = 'https://github.com/vhyrro/toml-edit.lua',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

build_dependencies = {
  'luarocks-build-rust-mlua',
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'toml-edit.lua-' .. '0.4.1',
}

build = {
    type = "rust-mlua",
    modules = {
        "toml_edit"
    },
}
