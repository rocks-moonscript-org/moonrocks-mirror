package = "hyprlua"
version = "0.1-0"
source = {
    url = "git://github.com/cacarico/hyprlua.git",
    tag = "v0.1.0",
}
description = {
    summary = "A CLI tool for generating Hyprland configurations using Lua.",
    detailed = "Hyprlua allows users to create Hyprland configuration files (`hyprland.conf`) using Lua scripts (`config.lua`). It simplifies configuration management by leveraging Lua's scripting capabilities.",
    homepage = "https://github.com/yourusername/hyprlua",
    license = "MIT",
}

dependencies = {
    "lua >= 5.0",
    "argparse",
}

build = {
    type = "builtin",
    modules = {
        ["hyprlua"] = "src/hyprlua.lua",
        ["hyprlua.modules.binds"] = "src/modules/binds.lua",
        ["hyprlua.modules.general"] = "src/modules/general.lua",
        ["hyprlua.libs.utils"] = "src/libs/utils.lua",
        ["hyprlua.libs.logs"] = "src/libs/logs.lua",
    },
    binaries = {
        ["hyprlua"] = "bin/hyprlua",
    },
}
