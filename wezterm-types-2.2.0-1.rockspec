local git_ref = 'fb24c5738ad0c7c0c25a5a987115633ec642e022'
local modrev = '2.2.0'
local specrev = '1'

local repo_url = 'https://github.com/DrKJeff16/wezterm-types'

rockspec_format = '3.0'
package = 'wezterm-types'
version = modrev ..'-'.. specrev

description = {
  summary = 'WezTerm Lua config types for Lua Language Server, with Neovim and VSCode compatibility. Also supperts various WezTerm plugins.',
  detailed = [[
LuaCATS-like Lua Language Server type annotations for your WezTerm config]],
  labels = { 'metalua', 'neovim' } ,
  homepage = 'https://luarocks.org/modules/drkjeff16/wezterm-types',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'wezterm-types-' .. 'fb24c5738ad0c7c0c25a5a987115633ec642e022',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
