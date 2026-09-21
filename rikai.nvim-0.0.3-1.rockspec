local git_ref = '0.0.3'
local specrev = '1'

local repo_url = 'https://github.com/teto/rikai.nvim'

rockspec_format = '3.0'
package = 'rikai.nvim'

-- in the luarocks-tag-release action, we set USED_AS_TEMPLATE to "USED_AS_TEMPLATE"
-- to know if the rockspec is running in actual release mode
local release_mode = 'USED_AS_TEMPLATE' == "USED_AS_TEMPLATE"

dependencies = {
    'lua == 5.1',
    'lsqlite3',
    'luautf8',
    'mega.cmdparse'
}

test_dependencies = { }

if release_mode then
  version = git_ref ..'-'.. specrev
  source = {


    url = repo_url .. '/archive/' .. git_ref .. '.zip',
    dir = 'rikai.nvim-' .. git_ref,
  }
else
  version = "scm-".. specrev
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'ftplugin', 'plugin' },
}

description = {
  summary = 'rikaitan for neovim, i.e., japanese translation integrated ',
  detailed = [[
rikai.nvim]],
  labels = { 'japanese', 'neovim' } ,
  homepage = 'https://github.com/teto/rikai.nvim',
  license = 'GPL-3.0'
}
