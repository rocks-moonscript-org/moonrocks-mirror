package = "vmake"
version = "2.0.1-19"

source = {
    url = "git://github.com/vercas/vMake",
    tag = "v2.0.1",
}

description = {
    summary = "Tool for building software and configuring builds.",
    homepage = "https://github.com/vercas/vMake",
    license = "NCSA (BSD-like)",
}

dependencies = {
    "lua >= 5.2",
}

build = {
    type = "builtin",

    modules = {
        ["vmake"] = "vmake.lua",
    },
}
