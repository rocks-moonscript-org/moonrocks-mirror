local git_ref = 'v0.10.1'
local modrev = '0.10.1'
local specrev = '1'

local repo_url = 'https://github.com/milanglacier/yarepl.nvim'

rockspec_format = '3.0'
package = 'yarepl.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'All-in-one REPL and TUI App management tool. Offering flexible interaction paradigms, project-level configs, aider-chat integration, and native dot-repeat.',
  detailed = '',
  labels = { 'neovim', 'yarepl.nvim' } ,
  homepage = 'https://github.com/milanglacier/yarepl.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'yarepl.nvim-' .. '0.10.1',
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
