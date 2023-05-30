package = "teml"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/UrNightmaree/teml.git",
    tag = "v0.1.0"
}
description = {
    summary = "String Templates library for Lua",
    homepage = "https://github.com/UrNightmaree/teml",
    license = "MIT"
}
build = {
    type = "builtin",
    modules = {
        ["teml"] = "teml.lua"
    }
}
