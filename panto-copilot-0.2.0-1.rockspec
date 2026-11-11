rockspec_format = "3.0"
package = "panto-copilot"
version = "0.2.0-1"

source = {
    url = "git+https://code.tjp.lol/public/panto-copilot.git",
    tag = "v0.2.0",
}

description = {
    summary = "GitHub Copilot defaults for panto",
    license = "MIT",
}

dependencies = { "lua >= 5.4, < 5.5" }

build = {
    type = "builtin",
    modules = {
        ["panto-copilot"] = "init.lua",
        ["panto-copilot.quota"] = "_quota.lua",
        ["panto-copilot._usage_footer"] = "_usage_footer.lua",
    },
}
