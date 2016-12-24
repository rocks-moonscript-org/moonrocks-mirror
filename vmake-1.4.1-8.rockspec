package = "vmake"
version = "1.4.1-8"

source = {
    url = "git://github.com/vercas/vMake",
    tag = "v1.4.1",
}

description = {
    summary = "Tool for building software and configuring builds.",
    homepage = "https://github.com/vercas/vMake",
    license = "NCSA (BSD-like)",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",

    modules = {
        ["vmake"] = "vmake.lua",
    },
}
