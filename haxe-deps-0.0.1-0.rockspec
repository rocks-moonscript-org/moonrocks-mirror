package = "haxe-deps"
version = "0.0.1-0"

source = {
   url = "git://github.com/jdonaldson/haxe-deps.git"
}

description = {
   homepage = "https://github.com/jdonaldson/haxe-deps",
   license  = "MIT"
}

dependencies = {
   "lrexlib-pcre == 2.8.0-1",
   "luv          >= 1.22.0-1",
   "luasocket    >= 3.0rc1-2",
   "luautf8      >= 0.1-1",
   "bit32        >= 5.2"
}

build = {
   type = "none",
   modules = {}
}
