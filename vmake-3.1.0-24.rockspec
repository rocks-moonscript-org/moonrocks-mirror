package = "vmake"
version = "3.1.0-24"

source = {
    url = "git://github.com/vercas/vMake",
    tag = "v3.1.0",
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
