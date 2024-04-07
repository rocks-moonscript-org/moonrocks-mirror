local git_ref = 'v0.3.3'
local modrev = '0.3.3'
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

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'toml-edit.lua-' .. '0.3.3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'make',
  install_variables = {
    INST_PREFIX='$(PREFIX)',
    INST_LIBDIR='$(LIBDIR)',
  },
  copy_directories = { },
}
