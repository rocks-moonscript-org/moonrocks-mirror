local git_ref = 'v0.12.0'
local modrev = '0.12.0'
local specrev = '1'

local repo_url = 'https://github.com/milanglacier/yarepl.nvim'

rockspec_format = '3.0'
package = 'yarepl.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Versatile REPL/CLI manager. Multiple sending modes with parallel sessions, buffer attachments, and cross-language support. AI CLI integration for Aider  and OpenAI Codex. Picker support, project-level configs, code cell text objects, and native dot-repeat.',
  detailed = '',
  labels = { 'neovim', 'yarepl.nvim' } ,
  homepage = 'https://github.com/milanglacier/yarepl.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'yarepl.nvim-' .. '0.12.0',
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
