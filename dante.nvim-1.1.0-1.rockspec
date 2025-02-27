local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/S1M0N38/dante.nvim'

rockspec_format = '3.0'
package = 'dante.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '✎ A basic writing tool powered by LLM',
  detailed = [[
A template for Neovim plugin]],
  labels = { 'ai-nvim', 'grammar-checker', 'llm', 'neovim', 'neovim-plugin', 'openai', 'writing-tool' } ,
  homepage = 'https://github.com/S1M0N38/dante.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'dante.nvim-' .. '1.1.0',
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
