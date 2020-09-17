package = "awesome-viewport"
version = "devel-1"
source = {
    url = "git://github.com/jcrd/awesome-viewport",
    tag = "master",
}
description = {
    summary = "AwesomeWM library for managing tags based on viewports",
    homepage = "https://github.com/jcrd/awesome-viewport",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["awesome-viewport"] = "init.lua",
    },
}
