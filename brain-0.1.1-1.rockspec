package = "brain"
version = "0.1.1-1"

source = {
    url = "git://github.com/darkstalker/lua_brain.git",
    tag = "0.1.1",
}

description = {
    summary = "Chat bot engine based on Markov chains",
    detailed = [[
        Brain is a conversation simulator based on Markov chains.
        It can learn to speak in any language using text samples.
    ]],
    homepage = "https://github.com/darkstalker/lua_brain",
    license = "MIT/X11",
}

dependencies = {
    "lua >= 5.1",
    "lsqlite3 >= 0.9.3",
    "luautf8 >= 0.1.0",
}

build = {
    type = "builtin",
    modules = {
        brain = "src/brain.lua",
        ["brain.database"] = "src/brain/database.lua",
        ["brain.engine"] = "src/brain/engine.lua",
        ["brain.tokenizer"] = "src/brain/tokenizer.lua",
    },
    copy_directories = { "examples" },
}
