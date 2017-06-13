package = "ctc"
version = "0.1-1"

build = {
    modules = {
        ctc = "src/ctc.c",
    },
    type = "builtin",
}

dependencies = {
    "lua >= 5.1, < 5.4"
}

description = {
    summary = "Constant-time string comparisons for Lua",
    detailed = [[
        Safe string comparison function to avoid timing attack when comparing
        cryptographically sensitive string data.
    ]],
    license = "MIT",
    homepage = "https://github.com/ldrumm/lua-ctc",
}

source = {
    url = "git://github.com/ldrumm/lua-ctc/",
    tag = "v0.1"
}
