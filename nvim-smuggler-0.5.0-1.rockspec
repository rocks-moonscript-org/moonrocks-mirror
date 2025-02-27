local git_ref = 'v0.5.0'
local modrev = '0.5.0'
local specrev = '1'

local repo_url = 'https://github.com/Klafyvel/nvim-smuggler'

rockspec_format = '3.0'
package = 'nvim-smuggler'
version = modrev ..'-'.. specrev

description = {
  summary = 'Send code to your Julia REPL, get diagnostics in return.',
  detailed = '',
  labels = { 'julia', 'julia-repl', 'julialang', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/Klafyvel/nvim-smuggler',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'nvim-nio' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-smuggler-' .. '0.5.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
