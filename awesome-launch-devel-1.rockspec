package = "awesome-launch"
version = "devel-1"
source = {
    url = "git://github.com/jcrd/awesome-launch",
    tag = "master",
}
description = {
    summary = "AwesomeWM library for launching clients with single instance IDs",
    homepage = "https://github.com/jcrd/awesome-launch",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "uuid",
}
build = {
    type = "builtin",
    modules = {
        ["awesome-launch"] = "init.lua",
        ["awesome-launch.panel"] = "panel.lua",
        ["awesome-launch.shared"] = "shared.lua",
        ["awesome-launch.widget"] = "widget.lua",
        ["awesome-launch.workspace"] = "workspace.lua",
    },
    install = {
        bin = {
            "awesome-launch",
        },
    },
}
