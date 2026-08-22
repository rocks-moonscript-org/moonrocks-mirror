package = "importutils"
version = "26.0.1-1"

source = { 
    url = "git://github.com/Evo4421/importutils.git",
    tag = "v26.0.1-1"
}

build = {
    type = "builtin",
    modules = {
        ["importutils"] = "init.lua"
    },
    copy_directories = {
        "README.md",
        "LICENSE"
    }
}

description = {
    summary = "Functionally more complete, more modern modules introduced",
    license = "MIT",
    homepage = "https://github.com/Evo4421/importutils",
    maintainer = "Evo <aketeresornesy@gmail.com>"
}

dependencies = {
    "lua >= 5.2",
    "lfs >= 1.6.0",
    "cqueues >= 2020-06-21",
    "llthreads >= 1.0.0"
}