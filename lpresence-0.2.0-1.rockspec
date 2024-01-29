---@diagnostic disable

local _version = "0.2.0-1"

rockspec_format = "3.0"

package = "lpresence"
version = (_version or "dev-1")

source = {
    url = "git+https://github.com/komothecat/lpresence.git",
}

if not _version then
    source.branch = "main"
else
    source.tag = "v" .. _version
end

description = {
    homepage = "https://github.com/komothecat/lpresence",
    issues_url = "https://github.com/komothecat/lpresence/issues",
    license = "MIT",

    summary = "A Lua wrapper for Discord IPC and RPC. ",
    detailed = [[
A Lua wrapper for Discord IPC and RPC.

More information is on the GitHub page.
]],
}
dependencies = {
    "lua >= 5.1, < 5.5",
    "lua-cjson >= 2.1.0.10",
    "classy >= 0.4",
    "luafilesystem >= 1.8.0",
    "vstruct >= 2.1.1",
    platforms = {
        unix = {
            "cqueues >= 20200726",
        },
        windows = {
            "winapi >= 1.4.2",
        },
    },
}
build = {
    type = "builtin",
    modules = {
        ["lpresence"] = "lpresence.lua",
        ["lpresence.baseclient"] = "lpresence/baseclient.lua",
        ["lpresence.client"] = "lpresence/client.lua",
        ["lpresence.error_kind"] = "lpresence/error_kind.lua",
        ["lpresence.love"] = "lpresence/love.lua",
        ["lpresence.payloads"] = "lpresence/payloads.lua",
        ["lpresence.rpc"] = "lpresence/rpc.lua",
        ["lpresence.utils"] = "lpresence/utils.lua",
    },
}
