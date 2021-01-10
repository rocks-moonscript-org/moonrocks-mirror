rockspec_format = "3.0"

package = "lua-ihex"
version = "0.1.0-1"

source = {
    url = "git://github.com/sci4me/lua-ihex.git",
    tag = "0.1.0"
}

description = {
    summary = "Intex Hex encoder/decoder",
    detailed = [[
        An opinionated, mostly-feature-complete,
        probably-not-that-buggy Intel Hex encoding 
        and decoding utility library for Lua.
    ]],
    homepage = "https://github.com/sci4me/lua-ihex",
    issues_url = "https://github.com/sci4me/lua-ihex/issues",
    maintainer = "sci4me",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1",
    "bit32"
}

build = {
    type = "builtin",
    modules = {
        ["lua-ihex"] = "src/lua-ihex.lua"
    },
    copy_directories = {
        "docs",
        "spec"
    }
}

test_dependencies = {
    "busted",
    "busted-htest"
}

test = {
    type = "busted"
}