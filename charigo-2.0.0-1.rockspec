rockspec_format = "3.0"
package = "charigo"
version = "2.0.0-1"

source = {
    url = "git+https://github.com/wewesss/charigo.git",
    tag = "v2.0.0",
}

description = {
    summary  = "Character set conversion for Lua 5.1-5.4 and LuaJIT.",
    detailed = [[
charigo converts text between UTF-8, UTF-16LE/BE, Latin-1 and CP1252 with
strict RFC 3629 UTF-8, explicit error policies (strict, replace, skip) and
system encoding detection. Pure Lua, zero dependency.
]],
    homepage   = "https://github.com/wewesss/charigo",
    license    = "MIT",
    maintainer = "SUP2Ak <cormier.wesley@gmail.com>",
    labels     = { "encoding", "charset", "utf-8", "utf-16", "cp1252", "latin1" },
    issues_url = "https://github.com/wewesss/charigo/issues",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ["charigo"]       = "charigo/init.lua",
        ["charigo.utf8"]  = "charigo/utf8.lua",
        ["charigo.sbcs"]  = "charigo/sbcs.lua",
        ["charigo.utf16"] = "charigo/utf16.lua",
        ["charigo.os"]    = "charigo/os.lua",
    },
    copy_directories = { "doc" },
}

test = {
    type    = "command",
    command = "lua tests/run.lua",
}
