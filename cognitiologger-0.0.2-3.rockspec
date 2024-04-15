package = "CognitioLogger"
version = "0.0.2-3"
source = {
    url = "https://github.com/Kuaralaboratories/CognitioLogger/archive/refs/tags/v0.0.1-release.tar.gz",
    tag = "v0.0.2",
}
description = {
    summary = "Made with löve by Kuaralaboratories_",
    detailed = [[
        CognitioLogger is lightweight logging library for logging professionally.
    ]],
    license = "MIT",
    homepage = "https://github.com/Kuaralaboratories/CognitioLogger",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["cognitiologger"] = "CognitioLogger.lua",
    }
}
