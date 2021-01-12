rockspec_format = "3.0"

package = "ihex"
version = "0.1.1-1"

source = {
    url = "git://github.com/sci4me/ihex.lua.git",
    tag = "0.1.1"
}

description = {
    summary = "Intex Hex encoder/decoder",
    detailed = [[
        An opinionated, mostly-feature-complete,
        probably-not-that-buggy Intel Hex encoding 
        and decoding utility library for Lua.
    ]],
    homepage = "https://github.com/sci4me/ihex.lua",
    issues_url = "https://github.com/sci4me/ihex.lua/issues",
    maintainer = "sci4me",
    license = "MIT",
    labels = {
        "serialization"
    }
}

dependencies = {
    "lua >= 5.1",
    "bit32"
}

build = {
    type = "builtin",
    modules = {
        ["ihex"] = "ihex/ihex.lua"
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