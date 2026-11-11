rockspec_format = "3.0"
package = "panto-codex"
version = "0.3.0-1"

source = {
    url = "git+https://code.tjp.lol/public/panto-codex.git",
    tag = "v0.3.0",
}

description = {
    summary = "Codex subscription defaults for panto",
    license = "MIT",
}

dependencies = { "lua >= 5.4, < 5.5" }

build = {
    type = "builtin",
    modules = {
        ["panto-codex"] = "init.lua",
        ["panto-codex.quota"] = "_quota.lua",
        ["panto-codex._usage_footer"] = "_usage_footer.lua",
    },
}
