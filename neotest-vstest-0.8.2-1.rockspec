local git_ref = '0.8.2'
local modrev = '0.8.2'
local specrev = '1'

local repo_url = 'https://github.com/Nsidorenco/neotest-vstest'

rockspec_format = '3.0'
package = 'neotest-vstest'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neotest adapter for dotnet',
  detailed = '',
  labels = { '"neovim"', '"neotest"' } ,
  homepage = 'https://github.com/Nsidorenco/neotest-vstest',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-c_sharp', 'tree-sitter-fsharp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-vstest-' .. '0.8.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'scripts' } ,
}
