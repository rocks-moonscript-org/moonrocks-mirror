package = "vmake"
version = "2.0.0-18"

source = {
    url = "git://github.com/vercas/vMake",
    tag = "v2.0.0-5.1",
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
