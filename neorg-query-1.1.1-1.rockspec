local git_ref = 'v1.1.1'
local modrev = '1.1.1'
local specrev = '1'

local repo_url = 'https://github.com/benlubas/neorg-query'

rockspec_format = '3.0'
package = 'neorg-query'
version = modrev ..'-'.. specrev

description = {
    summary = 'A database for your neorg notes',
    detailed = '',
    labels = { },
    homepage = 'https://github.com/benlubas/neorg-query',
    license = 'MIT'
}

dependencies = { 'neorg >= 9', 'lua ~> 5.1' } 

build_dependencies = {
  'luarocks-build-rust-mlua',
}

test_dependencies = { }

source = {
    url = repo_url .. '/archive/' .. git_ref .. '.zip',
    dir = 'neorg-query-' .. '1.1.1',
}

if modrev == 'scm' or modrev == 'dev' then
    source = {
        url = repo_url:gsub('https', 'git')
    }
end

build = {
    type = "rust-mlua",

    modules = {
        ["libneorg_query"] = "neorg_query",
    },

    install = {
        lua = {
            ["neorg_query.api"] = "lua/neorg_query/api.lua",
            ["neorg_query.formatter"] = "lua/neorg_query/formatter.lua",
            ["neorg.modules.external.query.module"] = "lua/neorg/modules/external/query/module.lua",
        },
    },

    copy_directories = { },
}
