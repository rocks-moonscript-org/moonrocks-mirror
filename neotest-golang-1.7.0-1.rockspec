local git_ref = 'v1.7.0'
local modrev = '1.7.0'
local specrev = '1'

local repo_url = 'https://github.com/fredrikaverpil/neotest-golang'

rockspec_format = '3.0'
package = 'neotest-golang'
version = modrev ..'-'.. specrev

description = {
  summary = 'Reliable Neotest adapter for running Go tests in Neovim.',
  detailed = '',
  labels = { 'go', 'golang', 'neotest', 'neotest-adapter', 'neovim-plugin' } ,
  homepage = 'https://github.com/fredrikaverpil/neotest-golang',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'plenary.nvim', 'tree-sitter-go' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-golang-' .. '1.7.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
