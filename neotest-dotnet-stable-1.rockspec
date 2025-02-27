local git_ref = '0656bae5832cefa4fd54ff2f2fc657f44a653d4a'
local modrev = 'stable'
local specrev = '1'

local repo_url = 'https://github.com/Issafalcon/neotest-dotnet'

rockspec_format = '3.0'
package = 'neotest-dotnet'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neotest adapter for dotnet',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/Issafalcon/neotest-dotnet',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'tree-sitter-c_sharp' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-dotnet-' .. '0656bae5832cefa4fd54ff2f2fc657f44a653d4a',
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
