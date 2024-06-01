local git_ref = 'v0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/mfussenegger/nlua'

rockspec_format = '3.0'
package = 'nlua'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim as Lua interpreter',
  detailed = [[
    Neovim embeds a Lua interpreter, but it doesn't expose the same command line interface as plain lua.
    nlua is a script which emulates Lua's command line interface, using Neovim's -l option under the hood.
  ]],
  labels = { 'interpreter', 'lua', 'neovim' } ,
  homepage = 'https://github.com/mfussenegger/nlua',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nlua-' .. '0.2.0',
}

deploy = {
    wrap_bin_scripts = false,
}

build = {
   type = "builtin",
   modules = {},
   install = {
     bin = { nlua = 'nlua', },
   },
}
