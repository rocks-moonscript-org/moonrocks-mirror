package = "quadratic"
version = "1.0-1"

source = {
    url = "git://github.com/NNEngine/quadratic"
}

description = {
    summary = "Quadratic equation solver for Lua",
    detailed = [[
        A small C extension for Lua 5.4 that solves quadratic (and degenerate linear)
        equations, with both a quick functional API and an object-oriented API for
        working with reusable quadratic equations — including step-by-step solutions.
    ]],
    homepage = "https://github.com/NNEngine/quadratic",
    license = "MIT",
    maintainer = "NNEngine"
}

dependencies = {
    "lua >= 5.4"
}

build = {
    type = "builtin",
    modules = {
        quadratic = {
            sources = {"src/quadratic.c"},
            incdirs = {"include"}
        }
    }
}
