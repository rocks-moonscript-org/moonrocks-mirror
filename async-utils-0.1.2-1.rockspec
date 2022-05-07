package = "async-utils"
version = "0.1.2-1"
source = {
    url = "git+https://github.com/SirZenith/lua-async-utils.git",
    tag = version,
}
description = {
    homepage = "https://github.com/SirZenith/lua-async-utils",
    license = "MIT/X11"
}
dependencies = {
    "lua >= 5.1, < 5.5",
    "copas >= 3.0",
    "luafilesystem >= 1.8",
    "luv >= 1.43",
}
build = {
    type = "builtin",
    modules = {
        ["async-utils"] = "src/init.lua",
        ["async-utils.recorder"] = "src/recorder.lua",
        ["async-utils.task_queue"] = "src/task_queue.lua"
    }
}
