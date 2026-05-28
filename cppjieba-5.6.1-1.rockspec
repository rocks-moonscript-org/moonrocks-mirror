local git_ref = '5.6.1'
local modrev = '5.6.1'
local specrev = '1'

local repo_url = 'https://github.com/neo451/jieba.nvim'

rockspec_format = '3.0'
package = 'cppjieba'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/neo451/jieba.nvim"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev .. '-' .. specrev
package = 'cppjieba'

description = {
  summary = '基于jieba-lua的neovim中文词跳转',
  detailed = '',
  labels = { 'lua', 'neovim', 'jieba' },
  homepage = 'https://github.com/neo451/jieba.nvim',
  license = 'GPL-3.0',
}

build_dependencies = { "luanativeobjects" }

dependencies = { "lua >= 5.1", "vim", "wordmotion.nvim" }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'jieba.nvim-' .. '5.6.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'xmake',
  copy_directories = { 'plugin' },
  -- https://github.com/xmake-io/luarocks-build-xmake/pull/3
  install = {
    conf = {
      ['..'] = 'shell.nix',
      ['../scripts/update.sh'] = 'scripts/update.sh',
    },
  },
}
