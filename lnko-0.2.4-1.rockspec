local git_ref = "v0.2.4"
local modrev = "0.2.4"
local specrev = "1"

local repo_url = "https://github.com/Owloops/lnko"

rockspec_format = "3.0"
package = "lnko"
version = modrev .. "-" .. specrev

description = {
    summary = "Simple stow-like dotfile linker",
    detailed = [[
lnko helps manage dotfiles by creating relative symlinks from a
source directory to a target directory. Features include conflict
handling, orphan cleanup, tree folding, and Stow compatibility.]],
    labels = { 'cli', 'dotfiles-manager', 'gnu-stow', 'lua', 'symlinks-manager' } ,
    homepage = "https://github.com/Owloops/lnko",
    maintainer = "Papuna Gagnidze <pgagnidze@owloops.com>",
    license = 'GPL-3.0'
}

dependencies = {
    "lua >= 5.1, < 5.5",
    "luafilesystem >= 1.8.0",
}

test_dependencies = {
    "busted",
}

source = {
    url = repo_url .. "/archive/" .. git_ref .. ".zip",
    dir = "lnko-" .. "0.2.4",
}

if modrev == "scm" or modrev == "dev" then
    source = {
        url = repo_url:gsub("https", "git")
    }
end

build = {
    type = "builtin",

    modules = {
        ["lnko"] = "lnko/init.lua",
        ["lnko.fs"] = "lnko/fs.lua",
        ["lnko.plan"] = "lnko/plan.lua",
        ["lnko.tree"] = "lnko/tree.lua",
        ["lnko.output"] = "lnko/output.lua",
    },

    install = {
        bin = {
            ["lnko"] = "bin/lnko.lua",
        }
    },
}
