package = "kong-advanced-router"

version = "0.1.1-1"

supported_platforms = {"linux", "macosx"}
source = {
    url = "git://github.com/dream11/kong-advanced-router",
    tag = "v0.1.1"
}

description = {
    summary = "Kong plugin to route requests based on the response of an IO call",
    homepage = "https://github.com/dream11/kong-advanced-router",
    license = "MIT",
    maintainer = "Dream11 <tech@dream11.com>"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        ["kong.plugins.advanced-router.handler"] = "kong/plugins/advanced-router/handler.lua",
        ["kong.plugins.advanced-router.schema"] = "kong/plugins/advanced-router/schema.lua",
        ["kong.plugins.advanced-router.io"] = "kong/plugins/advanced-router/io.lua",
        ["kong.plugins.advanced-router.utils"] = "kong/plugins/advanced-router/utils.lua",
    },
}
