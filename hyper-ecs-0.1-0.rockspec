package = "hyper-ecs"
version = "0.1-0"

source = {
   url = "https://gitlab.com/ehemsley/hyper-ecs.git"
}

description = {
   homepage = "https://gitlab.com/ehemsley/hyper-ecs",
   license = "GNU LGPL-3"
}

dependencies = {
    "lua >= 5.1",
    "middleclass ~> 4.1.1"
}

build = {
   type = "builtin",
   modules = {
       hyper = "hyper.lua"
   }
}
