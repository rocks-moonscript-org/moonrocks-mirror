package = "awesome-viewport"
version = "0.1.0-1"
source = {
    url = "git://github.com/jcrd/awesome-viewport",
    tag = "v0.1.0",
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
