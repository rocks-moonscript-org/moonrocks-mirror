local git_ref = '4c75827d58584f76117d10e0af70272765fa8fb8'
local modrev = '0.17.1'
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
  dir = 'camouflage.nvim-' .. '4c75827d58584f76117d10e0af70272765fa8fb8',
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
