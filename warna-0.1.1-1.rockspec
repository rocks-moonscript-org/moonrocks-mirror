---@diagnostic disable:lowercase-global
local _version = "0.1.1-1"

rockspec_format = "3.0"

package = "warna"
version = (_version or "dev-1")

source = {
    url = "git+https://github.com/komothecat/warna.git",
}
if not _version then
    source.branch = "main"
else
    source.tag = "v" .. _version
end

description = {
    homepage = "https://github.com/komothecat/warna#readme",
    issues_url = "https://github.com/komothecat/warna/issues",
    license = "MIT",

    labels = { "commandline" },
    summary = "🎨 Terminal text styling for Lua",
    detailed = "Warna is a simple text styling for the terminal. View more on GitHub.",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ["warna"] = "./warna.lua",
    },
    install = {
        bin = {
            ["warna.lua"] = "./warna.lua",
        },
    },
}
