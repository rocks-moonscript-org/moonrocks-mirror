local git_ref = 'v1.0.1'
local modrev = '1.0.1'
local specrev = '1'

local repo_url = 'https://github.com/matiyas/vue2-lsp-pathfinder.nvim'

rockspec_format = '3.0'
package = 'vue2-lsp-pathfinder.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Pathfinder for Vue 2 / Nuxt 2 codebases — navigates where LSP can\'t reach',
  detailed = '',
  labels = { 'neovim', 'vue', 'nuxt', 'lsp', 'navigation' } ,
  homepage = 'https://github.com/matiyas/vue2-lsp-pathfinder.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'vue2-lsp-pathfinder.nvim-' .. '1.0.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'lua', 'plugin' } ,
}
