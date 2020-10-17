package = "moonbreaker"
version = "dev-1"
source = {
    url = "git+https://github.com/Invizory/moonbreaker.git",
}
description = {
    summary = "Circuit Breaker for Lua",
    homepage = "https://github.com/Invizory/moonbreaker",
    maintainer = "Arthur Khashaev <arthur@khashaev.ru>",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "stdlib",
}
build = {
    type = "builtin",
    copy_directories = {
        "docs",
        "spec",
    },
    modules = {
        ["moonbreaker"] = "src/moonbreaker/init.lua",
        ["moonbreaker.oop"] = "src/moonbreaker/oop.lua",
        ["moonbreaker.xpcall"] = "src/moonbreaker/xpcall.lua",
    },
}
