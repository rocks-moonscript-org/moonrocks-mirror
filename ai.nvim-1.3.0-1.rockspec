local git_ref = 'v1.3.0'
local modrev = '1.3.0'
local specrev = '1'

local repo_url = 'https://github.com/S1M0N38/ai.nvim'

rockspec_format = '3.0'
package = 'ai.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '✧ Query LLMs following OpenAI API specification',
  detailed = [[
OpenAI compatible API for Neovim plugins development]],
  labels = { 'ai-nvim', 'curl', 'llm', 'luarocks', 'neovim', 'openai-api' } ,
  homepage = 'https://github.com/S1M0N38/ai.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ai.nvim-' .. '1.3.0',
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
