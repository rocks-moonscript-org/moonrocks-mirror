local git_ref = '0.0.7'
local modrev = '0.0.7'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/git2.nvim'

rockspec_format = '3.0'
package = 'git2.nvim'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/Freed-Wu/git2.nvim"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev .. '-' .. specrev

description = {
  summary = '[WIP!!!] Use luagit2 to realize a :Git in neovim',
  detailed = '',
  labels = { "neovim", "git2" },
  homepage = 'https://luarocks.org/modules/Freed-Wu/git2.nvim',
  license = 'GPL3',
}

dependencies = { 'lua >= 5.1', 'mega.argparse', 'vim', 'luabitop', 'lua-git2-temp' }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'git2.nvim-' .. '0.0.7',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'scripts', 'plugin' },
  install = {
    bin = {
      git2 = 'bin/git2',
    },
    conf = {
      ['..'] = 'shell.nix',
    },
  },
}
