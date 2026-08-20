local git_ref = '0.1.1'
local modrev = '0.1.1'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/code-stats.nvim'

rockspec_format = '3.0'
package = 'code-stats.nvim'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/Freed-Wu/code-stats.nvim"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev ..'-'.. specrev

description = {
  summary = 'Code::Stats plugin for Neovim',
  detailed = '',
  labels = { 'lua', 'neovim', 'code-stats', 'vim' },
  homepage = 'https://code-stats-nvim.readthedocs.io/',
  license = 'GPL-3.0',
}

dependencies = { 'lua >= 5.1', 'lua-requests-temp', 'lua-dotenv' }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'code-stats.nvim-' .. '0.1.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'scripts' } ,
  install = {
    conf = {
      ['..'] = 'shell.nix',
    },
  },
}
