rockspec_format = "3.0"

package = "sparse-set"
version = "0.1.0-1"

source = {
    url = "git://github.com/sci4me/sparse-set.lua.git",
    tag = "0.1.0"
}

description = {
    summary = "An efficient sparse set implementation",
    homepage = "https://github.com/sci4me/sparse-set.lua",
    issues_url = "https://github.com/sci4me/sparse-set.lua/issues",
    maintainer = "sci4me",
    license = "MIT",
    labels = {
        "serialization"
    }
}

dependencies = {
    "lua >= 5.1",
    "middleclass"
}

build = {
    type = "builtin",
    modules = {
        ["sparse-set"] = "sparse-set/init.lua"
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