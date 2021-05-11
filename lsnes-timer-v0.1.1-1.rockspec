package = "lsnes-timer"
version = "v0.1.1-1"
source = {
    url = "git+ssh://git@github.com/rodamaral/lsnes-timer.git",
    tag = "v0.1.1-1"
}
description = {
    summary = "lsnes-timer provides methods for executing Lua functions at desired times.",
    detailed = [[
lsnes-timer is a module that provides static methods for executing Lua
functions at desired times. It uses lsnes functionality internally and
exposes a more user-friendly, habitual API.]],
    homepage = "https://github.com/rodamaral/lsnes-timer",
    license = "MIT License"
}
dependencies = {"lua >= 5.1"}
build = {
    type = "builtin",
    modules = {
        ["timer"] = "src/timer/init.lua",
        ["timer.pool"] = "src/timer/pool.lua",
        ["timer.utils"] = "src/timer/utils.lua"
    }
}
