package = "Rblx_signal"
version = "0.1-3"
source = {
    url = "git://github.com/MrEntrasil/rblxsignal-for-lua",
    tag = "v0.1"
}
description = {
    summary = "Events support for the lua language",
    homepage = "https://github.com/MrEntrasil/rblxsignal-for-lua",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["Rblx signal"] = "rblxsignal.lua"
    },
    copy_directories = {"sub-modules"}
}