package = "Var"
version = "0.1-1"

source = {
   url = "git+https://github.com/nevervoyage/Var"
}

description = {
   summary = "Var module written on pure lua allows to create strict-typed variables and enchances some aspects of them",
   license = "Unlicense"
}

dependencies = {
   "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        Var = "src/Var.lua"
    }
}
