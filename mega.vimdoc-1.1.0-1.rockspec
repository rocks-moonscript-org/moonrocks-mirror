-- A template that will be replaced by the .github/workflows/release-luarocks.yml file
--
-- Reference:
--     Example template https://github.com/nvim-neorocks/luarocks-tag-release/blob/master/resources/rockspec.template
--

local git_ref = "v1.1.0"
local modrev = "1.1.0"
local specrev = "1"

local repo_url = "https://github.com/ColinKennedy/mega.vimdoc"

rockspec_format = "3.0"
package = "mega.vimdoc"
version = modrev .. "-" .. specrev

local user = "ColinKennedy"

description = {
    homepage = "https://github.com/" .. user .. "/" .. package,
    labels = { "neovim", "neovim-plugin" },
    license = "MIT",
    summary = 'A Neovim plugin that converts Lua source code to vimdoc',
}

dependencies = {
    "mini.doc >= 0.14.0, < 1.0",
    "mega.logging >= 1.1.4, < 2.0",
}

test_dependencies = {
    "busted >= 2.0, < 3.0",
    "lua >= 5.1, < 6.0",
    "nlua >= 0.2, < 1.0",
}

-- Reference: https://github.com/luarocks/luarocks/wiki/test#test-types
test = { type = "busted" }

source = {
    url = repo_url .. "/archive/" .. git_ref .. ".zip",
    dir = "mega.vimdoc-" .. "1.1.0",
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
