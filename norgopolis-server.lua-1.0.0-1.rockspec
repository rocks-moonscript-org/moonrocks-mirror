local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorg/norgopolis-server.lua'

rockspec_format = '3.0'
package = 'norgopolis-server.lua'
version = modrev ..'-'.. specrev

description = {
  summary = 'A vendored `norgopolis-server` binary for use in Lua applications.',
  detailed = [[
The Norgopolis server module automatically compiles and exposes a norgopolis-server binary which may be invoked from any program using the module as a dependency.
The module exposes a function that returns the path to the installed binary.]],
  labels = { 'rust', 'norgopolis', 'neorg' } ,
  homepage = 'https://github.com/nvim-neorg/norgopolis-server.lua',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'luarocks-build-rust-binary' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'norgopolis-server.lua-' .. '1.0.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
