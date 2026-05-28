local git_ref = 'v0.9.0'
local modrev = '0.9.0'
local specrev = '1'

local repo_url = 'https://github.com/milanglacier/minuet-ai.nvim'

rockspec_format = '3.0'
package = 'minuet-ai.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '💃 Dance with Intelligence in Your Code. Minuet offers code completion as-you-type from popular LLMs including OpenAI, Gemini, Claude, Ollama, Llama.cpp, Codestral, and more.',
  detailed = [[
- AI-powered code completion with dual modes:
- Specialized prompts and various enhancements for chat-based LLMs on code completion tasks.
- Fill-in-the-middle (FIM) completion for compatible models (DeepSeek, Codestral, Qwen, and others).
- Support for multiple AI providers (OpenAI, Claude, Gemini, Codestral, Ollama, and OpenAI-compatible services).
- Customizable configuration options.
- Streaming support to enable completion delivery even with slower LLMs.
- Support `nvim-cmp`, `blink-cmp`, `virtual text`, `built-in completion` frontend.
- Act as an **in-process LSP** server to provide completions (opt-in feature).]],
  labels = { 'neovim', 'minuet-ai.nvim' } ,
  homepage = 'https://github.com/milanglacier/minuet-ai.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'minuet-ai.nvim-' .. '0.9.0',
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
