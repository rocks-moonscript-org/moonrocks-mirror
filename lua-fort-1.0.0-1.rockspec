local package_name = "lua-fort"
local package_version = "1.0.0"
local rockspec_revision = "1"
local github_account_name = "nathanrpage97"
local github_repo_name = package_name
local git_checkout = package_version == "dev" and "master" or package_version

package = package_name
version = package_version .. "-" .. rockspec_revision

rockspec_format = "3.0"
source = {
    url = "git://github.com/" .. github_account_name .. "/" .. package_name,
    tag = "v" .. git_checkout
}

description = {
    summary = "A lua wrapper around the libfort ascii table c library",
    detailed = [[
        The lua-fort module provides ASCII table support for Lua. It wraps the fort library
        https://github.com/seleznevae/libfort.
    ]],
    homepage = "https://" .. github_account_name .. ".github.io/" ..
        github_repo_name,
    license = "MIT"
}

dependencies = {"lua >= 5.1"}

build = {
    type = "builtin",
    modules = {
        cfort = {
            sources = {"src/lfort.c", "src/fort.c"},
            -- disable wchar as it isnt needed for lua
            defines = {"FT_CONGIG_DISABLE_WCHAR"}
        }
    },
    install = {lua = {fort = "src/fort.lua"}},
    -- Override default build options (per platform)
    platforms = {},
    copy_directories = {"examples", "spec", "docs"}
}

test_dependencies = {"busted"}

test = {type = "busted"}

