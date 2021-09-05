package = "ArluqTools"
version = "1.0-1"
source = {
    url = "git+https://git@github.com/ZtModArchive/ArluqTools.git"
}
description = {
    summary = "Abstraction layer for Zoo Tycoon 2's Lua libraries",
    homepage = "https://github.com/ZtModArchive/ArluqTools",
    license = "MIT"
}
build = {
    type = "builtin",
    modules = {
        ["ArluqTools.lua.try"] = "1.0/src/lua/try.lua",
        ["ArluqTools.services.AnimalService"] = "1.0/src/services/AnimalService.lua",
    }
}