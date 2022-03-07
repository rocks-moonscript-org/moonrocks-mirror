package = "awesome-dovetail"
version = "0.2.0-1"
source = {
    url = "git://github.com/jcrd/awesome-dovetail",
    tag = "v0.2.0",
}
description = {
    summary = "AwesomeWM layout featuring two visible tiled clients",
    homepage = "https://github.com/jcrd/awesome-dovetail",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["awesome-dovetail"] = "init.lua",
    },
}
