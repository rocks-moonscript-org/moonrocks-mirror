rockspec_format = "3.0"
package = "panto-opencode-go"
version = "0.2.0-1"

source = {
    url = "git+https://code.tjp.lol/public/panto-opencode-go.git",
    tag = "v0.2.0",
}

description = {
    summary = "OpenCode Go defaults for panto",
    license = "MIT",
}

dependencies = { "lua >= 5.4, < 5.5" }

build = {
    type = "builtin",
    modules = {
        ["panto-opencode-go"] = "init.lua",
        ["panto-opencode-go.quota"] = "_quota.lua",
        ["panto-opencode-go._usage_footer"] = "_usage_footer.lua",
    },
}
