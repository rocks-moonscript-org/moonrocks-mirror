-- A template that will be replaced by the .github/workflows/release-luarocks.yml file
--
-- Reference:
--     Example template https://github.com/nvim-neorocks/luarocks-tag-release/blob/master/resources/rockspec.template
--

local git_ref = "v1.0.0"
local modrev = "1.0.0"
local specrev = "1"

local repo_url = "https://github.com/ColinKennedy/mega.busted"

rockspec_format = "3.0"
package = "mega.busted"
version = modrev .. "-" .. specrev

local user = "ColinKennedy"

description = {
    homepage = "https://github.com/" .. user .. "/" .. package,
    labels = { "neovim", "neovim-plugin" },
    license = "MIT",
    summary = 'Neovim busted unittest extensions',
}

dependencies = {
    "mega.logging >= 1.1.4, < 2.0",
    "busted >= 2.0, < 3.0",
}

test_dependencies = {
    "busted >= 2.0, < 3.0",
    "lua >= 5.1, < 6.0",
}

-- Reference: https://github.com/luarocks/luarocks/wiki/test#test-types
test = { type = "busted" }

source = {
    url = repo_url .. "/archive/" .. git_ref .. ".zip",
    dir = "mega.busted-" .. "1.0.0",
}

if modrev == "scm" or modrev == "dev" then
    source = {
        url = repo_url:gsub("https", "git"),
    }
end

build = {
    type = "builtin",
    copy_directories = { 'doc' } ,
}
