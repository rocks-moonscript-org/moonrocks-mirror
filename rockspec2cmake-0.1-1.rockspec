package = "rockspec2cmake"
version = "0.1-1"
source = {
    tag = "0.1-1",
    url = "git://github.com/f4rnham/rockspec2cmake.git"
}
description = {
    summary = "Generator of CMake build/install scripts for LuaRocks packages",
    homepage = "https://github.com/f4rnham/rockspec2cmake.git",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1",
    "penlight >= 1.3.2-2",
}
build = {
    type = "builtin",
    modules = {
        ["rockspec2cmake.CMakeBuilder"] = "rockspec2cmake/CMakeBuilder.lua",
        ["rockspec2cmake.init"] = "rockspec2cmake/init.lua",
        ["r2cmake"] = "r2cmake.lua",
    }
}
