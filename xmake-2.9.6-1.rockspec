local git_ref = '2.9.6'
local modrev = '2.9.6'
local specrev = '1'

local repo_url = 'https://github.com/xmake-io/xmake'

rockspec_format = '3.0'
package = 'xmake'
version = modrev ..'-'.. specrev

description = {
  summary = 'A cross-platform build utility based on Lua',
  detailed = '',
  labels = { 'c', 'linux', 'c-plus-plus', 'package-manager', 'visual-studio', 'cmake', 'build', 'lua', 'objective-c', 'makefile', 'build-tool', 'wdk', 'xmake', 'tbox', 'cross-toolchains' } ,
  homepage = 'https://luarocks.org/modules/waruqi/xmake',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' }

test_dependencies = { }

source = {
  url = repo_url .. '/releases/download/v' .. git_ref .. '/xmake-v' .. git_ref .. '.zip',
  dir = 'xmake-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'command',
  build_command = "./configure --prefix=$(PREFIX) && make",
  install_command = "make install"
}
