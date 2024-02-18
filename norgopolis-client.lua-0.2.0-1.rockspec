local git_ref = 'v0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neorg/norgopolis-client.lua'

rockspec_format = '3.0'
package = 'norgopolis-client.lua'
version = modrev ..'-'.. specrev

description = {
    summary = 'A lua bridge for the Norgopolis client rust module.',
    detailed = [[
A Lua binding to the Rust norgopolis-client module.
Allows for interacting with Norgopolis, optionally spawning the server if it is not yet started (norgopolis-server.lua must be installed for this capability).]],
    labels = { 'rust' } ,
    homepage = 'https://github.com/nvim-neorg/norgopolis-client.lua',
    license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
    url = repo_url .. '/archive/' .. git_ref .. '.zip',
    dir = 'norgopolis-client.lua-' .. '0.2.0',
}

build = {
    type = "rust-mlua",
    modules = {
        "norgopolis"
    },
    copy_directories = { },
}
