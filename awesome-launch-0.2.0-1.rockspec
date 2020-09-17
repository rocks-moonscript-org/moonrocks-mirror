package = "awesome-launch"
version = "0.2.0-1"
source = {
    url = "git://github.com/jcrd/awesome-launch",
    tag = "v0.2.0",
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
