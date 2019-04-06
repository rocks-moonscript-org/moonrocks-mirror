package = "luajit-xxhash"
version = "0.1.5-1"

source = {
   url = "git://github.com/sjnam/luajit-xxHash",
   tag = "v0.1.5",
}

description = {
   summary = "xxHash ffi binding",
   license = "Public Domain",
   homepage = "https://github.com/sjnam/luajit-xxHash",
   maintainer = "Soojin Nam <jsunam@gmail.com>",
}

build = {
   type = "builtin",
   modules = {
     ["xxhash"] = "xxhash.lua",
   }
}

