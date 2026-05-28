rockspec_format = "3.0"
package = "cortexa"
version = "0.1.1-1"

source = {
    url = "git+https://github.com/swadhinbiswas/Cortexa.git",
    tag = "v0.1.1",
    dir = "LUA",
}

description = {
    summary = "Git-inspired context management for LLM agents",
    detailed = [[
        Cortexa implements COMMIT, BRANCH, MERGE, and CONTEXT operations
        over a persistent versioned memory workspace for LLM agents.
        Based on the paper "Git Context Controller" (arXiv:2508.00031).
    ]],
    homepage = "https://github.com/swadhinbiswas/Cortexa",
    license = "MIT",
    maintainer = "Swadhin Biswas <swadhinbiswas.cse@gmail.com>",
    labels = { "llm", "agent", "context-management", "git", "memory" },
}

dependencies = {
    "lua >= 5.1",
    "luafilesystem >= 1.8",
}

build = {
    type = "builtin",
    modules = {
        ["cortexa"]           = "cortexa/init.lua",
        ["cortexa.models"]    = "cortexa/models.lua",
        ["cortexa.workspace"] = "cortexa/workspace.lua",
    },
}
