local git_ref = 'b4c6e816d537bbedaefd93f9eb034271ce96ab26'
local modrev = '2.1.2'
local specrev = '1'

local repo_url = 'https://github.com/khaneliman/neotest-nix'

rockspec_format = '3.0'
package = 'neotest-nix'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neotest adapter for Nix flakes.',
  detailed = '',
  labels = { 'neovim', 'neotest', 'nix' } ,
  homepage = 'https://github.com/khaneliman/neotest-nix',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'nvim-nio' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-nix-' .. 'b4c6e816d537bbedaefd93f9eb034271ce96ab26',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'queries' } ,
}
