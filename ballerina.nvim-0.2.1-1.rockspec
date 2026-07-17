local git_ref = 'b7fb2136553e2bfa7a69ebe83a7572ccb5835336'
local modrev = '0.2.1'
local specrev = '1'

local repo_url = 'https://github.com/redpierrot/ballerina.nvim'

rockspec_format = '3.0'
package = 'ballerina.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Ballerina support for Neovim: LSP, format-on-save, DAP debugging, auto-indent, syntax highlighting',
  detailed = [[
Ballerina support for Neovim: syntax highlighting, native LSP
setup, package-aware format-on-save, auto-indent, debugging via
nvim-dap, and run/test/build commands with quickfix integration.]],
  labels = { 'ballerina', 'lsp', 'lua', 'neovim', 'neovim-plugin' } ,
  homepage = 'https://github.com/redpierrot/ballerina.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ballerina.nvim-' .. 'b7fb2136553e2bfa7a69ebe83a7572ccb5835336',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'compiler', 'doc', 'ftdetect', 'ftplugin', 'lsp', 'syntax' } ,
}
