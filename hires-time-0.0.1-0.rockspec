package = "hires-time"
version = "0.0.1-0"

source = {
    url = "git://github.com/moznion/lua-hires-time.git",
    branch = "v0.0.1-0",
}

description = {
   summary = "A library to measure the system time with high resolution for lua",
   homepage = "https://github.com/moznion/lua-hires-time",
   license = "MIT/X11",
   maintainer = "moznion <moznion@gmail.com>",
}
build = {
   type = "builtin",
   modules = {
       hires_time = "src/hires-time.c",
   }
}

