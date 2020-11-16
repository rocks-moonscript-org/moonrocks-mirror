package = "lurror"
version = "1.0-0"
source = {
    url = "git+https://github.com/kitsunies/lurror.lua.git",
    tag = "v1.0-0"
}
description = {
    homepage = "https://github.com/kitsunies/lurror.lua",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        lurror = "lurror.lua"
    }
}