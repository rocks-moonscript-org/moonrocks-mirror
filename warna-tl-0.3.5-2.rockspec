---@diagnostic disable:lowercase-global
local _version = "0.3.5-2"

rockspec_format = "3.0"

package = "warna-tl"
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
    summary = "Teal types definition for warna",
}

dependencies = {
    "warna == " .. version,
    "lua >= 5.1",
}

build = {
    type = "builtin",
    install = {
        lua = {
            ["warna"] = "./warna.d.tl",
        }
    },
}
