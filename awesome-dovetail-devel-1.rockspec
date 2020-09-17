package = "awesome-dovetail"
version = "devel-1"
source = {
    url = "git://github.com/jcrd/awesome-dovetail",
    tag = "master",
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
