local git_ref = '39511289aa040a7746a9e2d551b35ef330f15c77'
local modrev = '5.1.1'
local specrev = '1'

local repo_url = 'https://github.com/DrKJeff16/wezterm-types'

rockspec_format = '3.0'
package = 'wezterm-types'
version = modrev ..'-'.. specrev

description = {
  summary = 'WezTerm Lua config types for LuaLS, with Neovim and VSCode support. Also supperts various WezTerm plugins.',
  detailed = [[
LuaCATS-like Lua Language Server type annotations for your WezTerm config]],
  labels = { 'neovim' } ,
  homepage = 'https://luarocks.org/modules/drkjeff16/wezterm-types',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'wezterm-types-' .. '39511289aa040a7746a9e2d551b35ef330f15c77',
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
