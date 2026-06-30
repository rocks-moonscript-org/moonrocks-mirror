package = "Var"
version = "0.1-4"

source = {
   url = "git://github.com/nevervoyage/Var"
}

description = {
   summary = "Var module written on pure lua allows to create strict-typed variables and enchances some aspects of them",
   license = "Unlicense",
   homepage = "http://github.com/nevervoyage/Var"
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
