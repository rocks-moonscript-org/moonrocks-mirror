package = "ergonomic_seed"
version = "1.0-1"
source = {
    url = "git://github.com/StephenCathcart/ergonomic-seed.git",
    tag = "v1.0",
}
description = {
    summary = "A tiny human-readable seed generator for Lua.",
    detailed = "Generates a random and reasonably unique human readable id along with its corresponding hash value",
    homepage = "https://github.com/StephenCathcart/ergonomic-seed",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ergonomic_seed = "ergonomic_seed.lua",
    }
}
