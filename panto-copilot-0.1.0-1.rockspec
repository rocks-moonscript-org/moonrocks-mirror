rockspec_format = "3.0"
package = "panto-copilot"
version = "0.1.0-1"

source = {
    url = "git+https://code.tjp.lol/public/panto-copilot.git",
    tag = "v0.1.0",
}

description = {
    summary = "GitHub Copilot defaults for panto",
    license = "MIT",
}

dependencies = { "lua >= 5.4, < 5.5" }

build = {
    type = "builtin",
    modules = { ["panto-copilot"] = "init.lua" },
}
