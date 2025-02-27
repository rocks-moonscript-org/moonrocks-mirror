package = "kong-traffic-shadowing"

version = "1.0.0-1"

supported_platforms = {"linux", "macosx"}

source = {
    url = "git+https://github.com/dream11/kong-plugin-dev",
    tag = "v1.0.0"
}

description = {
    summary = "Traffic Shadowing plugin for Kong API Gateway"
}

dependencies = {

}

build = {
    type = "builtin",
    modules = {
        ["kong.plugins.traffic-shadowing.handler"] = "kong/plugins/traffic-shadowing/handler.lua",
        ["kong.plugins.traffic-shadowing.schema"] = "kong/plugins/traffic-shadowing/schema.lua",
    }
}
