local git_ref = '0.2.17'
local modrev = '0.2.17'
local specrev = '1'

local repo_url = 'https://github.com/rimeinn/rime.nvim'

rockspec_format = '3.0'
package = 'rime.nvim'
if modrev:sub(1, 1) == '$' then
  modrev = "scm"
  specrev = "1"
  repo_url = "https://github.com/rimeinn/rime.nvim"
  package = repo_url:match("/([^/]+)/?$")
end
version = modrev ..'-'.. specrev

description = {
  summary = 'ㄓ rime for neovim',
  detailed = '',
  labels = { 'lua', 'neovim', 'rime', 'vim', 'xmake' },
  homepage = 'https://rime-nvim.readthedocs.io/',
  license = 'GPL-3.0',
}

build_dependencies = { "luanativeobjects" }

dependencies = { "lua >= 5.1", 'ime >= 0.0.8', 'platformdirs', 'lua-cjson' }

test_dependencies = {}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rime.nvim-' .. '0.2.17',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'xmake',
  copy_directories = {'after'},
  install = {
    bin = {
      rime = 'bin/rime'
    },
    conf = {
      ['..'] = 'shell.nix',
      ['../scripts/update.sh'] = 'scripts/update.sh',
    },
  },
}
