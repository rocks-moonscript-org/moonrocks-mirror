local git_ref = 'c193fd30f40a64d51213f4ba5885b5d5f6890a1d'
local modrev = '0.18.1'
local specrev = '1'

local repo_url = 'https://github.com/zeybek/camouflage.nvim'

rockspec_format = '3.0'
package = 'camouflage.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Hide sensitive values in configuration files during screen sharing',
  detailed = [[
A Neovim plugin that visually masks sensitive values during screen
sharing, using extmarks: .env, JSON, YAML, TOML, properties, netrc,
XML, .http, Terraform/HCL and Dockerfiles, plus picker previews and
result rows, the quickfix list, diffs and terminal output. It has a
presentation mode and a screen shield. The actual file content is
never modified.]],
  labels = { 'neovim', 'plugin', 'security', 'privacy' } ,
  homepage = 'https://github.com/zeybek/camouflage.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'camouflage.nvim-' .. 'c193fd30f40a64d51213f4ba5885b5d5f6890a1d',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin', 'queries', 'schemas' } ,
}
