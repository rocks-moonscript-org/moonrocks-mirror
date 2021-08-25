package = "config-by-env"

version = "2.0.1-1"

supported_platforms = {"linux", "macosx"}
source = {
    url = "git://github.com/dream11/kong-config-by-env",
    tag = "v2.0.1"
}

description = {
    summary = "Kong plugin to maintain config to be shared across plugins",
    homepage = "https://github.com/dream11/kong-config-by-env",
    license = "MIT",
    maintainer = "Dream11 <tech@dream11.com>"
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ["kong.plugins.config-by-env.handler"] = "kong/plugins/config-by-env/handler.lua",
        ["kong.plugins.config-by-env.schema"] = "kong/plugins/config-by-env/schema.lua",
        ["kong.plugins.config-by-env.config"] = "kong/plugins/config-by-env/config.lua",
        ["kong.plugins.config-by-env.utils"] = "kong/plugins/config-by-env/utils.lua",
    },
}
