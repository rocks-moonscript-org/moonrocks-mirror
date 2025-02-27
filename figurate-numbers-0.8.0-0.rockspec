package = "figurate-numbers"
version = "0.8.0-0"
source = {
    url = "https://github.com/edelveart/figurate-numbers/archive/v0.8.0.zip",
    tag = "v0.8.0"
}
description = {
    summary = "Generates 235 multidimensional figurate number sequences.",
    detailed = [[
      figurate-numbers is the most comprehensive and specialized Lua module for figurate numbers, capable of generating up to 235 different sequences across various dimensions and generalizations.
    ]],
    license = "MIT",
    homepage = "https://github.com/edelveart/figurate-numbers",
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["plane_figurate_numbers"] = "src/plane_figurate_numbers.lua",
        ["space_figurate_numbers"] = "src/space_figurate_numbers.lua",
        ["multidimensional_figurate_numbers"] = "src/multidimensional_figurate_numbers.lua",
        ["helpers.take_function"] = "src/helpers/take_function.lua",
    }
}

