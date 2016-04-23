package = "luadist2"
version = "0.2-1"
source = {
    tag = "0.2-1",
    url = "git://github.com/f4rnham/luadist2.git"
}
description = {
    summary = "Lua package manager",
    homepage = "https://github.com/f4rnham/luadist2.git",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1",
    "lualogging >= 1.3.0-1",
    "rocksolver >= 0.4-1",
    "rockspec2cmake >= 0.1-1",
    "penlight >= 1.3.2-3",
    "lua-git >= 0.5-1",
}
build = {
    type = "builtin",
    modules = {
        ["dist.utils"] = "dist/utils.lua",
        ["dist.manifest"] = "dist/manifest.lua",
        ["dist.manager"] = "dist/manager.lua",
        ["dist.log"] = "dist/log.lua",
        ["dist.git"] = "dist/git.lua",
        ["dist.downloader"] = "dist/downloader.lua",
        ["dist.config"] = "dist/config.lua",
        ["dist.init"] = "dist/init.lua",
        ["luadist"] = "luadist.lua",
    }
}
