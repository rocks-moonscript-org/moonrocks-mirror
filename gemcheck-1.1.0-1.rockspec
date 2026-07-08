package = "gemcheck"
version = "1.1.0-1"
rockspec_format = "3.0"
source = {
    url = "git+https://codeberg.org/bcasiello/gemcheck.git",
    tag = "1.1.0"
}
description = {
    summary = "Gemtext link checker",
    detailed = "Lua app to check links in gemtext pages",
    homepage = "https://codeberg.org/bcasiello/gemcheck",
    license = "MIT",
    issues_url = "https://codeberg.org/bcasiello/gemcheck/issues",
    maintainer = "Brian Casiello <bcasiello@duck.com>"
}
dependencies = {
    "lua >= 5.1, < 5.5",
    "gemlib >= 1.1.0",
    "penlight >= 1.4.0"
}
build = {
    type = "builtin",
    modules = {
        gemcheck = "bin/gemcheck.lua"
    },
    install = {
        bin = { gemcheck = "bin/gemcheck.lua" },
        lua = { "src/gemcheck.tl" }
    }
}
