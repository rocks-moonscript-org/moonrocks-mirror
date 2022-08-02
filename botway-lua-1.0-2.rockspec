package = "botway-lua"
version = "1.0-2"

source = {
    url = "git+https://github.com/abdfnx/botway-lua.git"
}

description = {
    summary = "Lua client package for Botway.",
    homepage = "https://github.com/abdfnx/botway-lua",
    license = "MIT",
    maintainer = "Abdfnx",
    detailed = [[
        Lua client package for Botway.
        After creating a new lua botway project, you need to use your tokens to connect with your bot.
    ]]
}

dependencies = {
    "lua >= 5.2",
    "lyaml",
    "path",
    "lunajson"
}

build = {
    type = "builtin",
    modules = {
        ["botway-lua"] = "src/botway.lua"
    }
}
