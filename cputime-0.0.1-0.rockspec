package = "cputime"
version = "0.0.1-0"

source = {
    url = "git://github.com/moznion/lua-cputime.git",
    branch = "v0.0.1-0",
}

description = {
   summary = "A bridge library for CPU time measurement",
   homepage = "https://github.com/moznion/lua-cputime",
   license = "MIT/X11",
   maintainer = "moznion <moznion@gmail.com>",
}

dependencies = {
   "lua >= 5.1, <= 5.4",
}

build = {
   type = "builtin",
   modules = {
       cputime = "src/lua-cputime.c"
   }
}

