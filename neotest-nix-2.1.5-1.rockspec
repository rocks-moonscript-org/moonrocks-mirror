local git_ref = 'fe5dac2b5f6cf51904eebcd7aad5869c68e33b39'
local modrev = '2.1.5'
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
  dir = 'neotest-nix-' .. 'fe5dac2b5f6cf51904eebcd7aad5869c68e33b39',
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
