package = "vmake"
version = "1.3.0-5"

source = {
    url = "git://github.com/vercas/vMake",
    tag = "v1.3.0",
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
