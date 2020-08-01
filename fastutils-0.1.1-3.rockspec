package = "fastutils"
version = "0.1.1-3"
source = {
    url = "https://luarocks.org/manifests/zencore/fastutils-0.1.1-3.src.rock"
}
description = {
    summary = "Collection of simple utils.",
}
dependencies = {
    "lua >= 5.1, < 5.4",
}
build = {
    type = "builtin",
    modules = {
        ["fastutils.strutils"] = "src/fastutils/strutils.lua",
    }
}
