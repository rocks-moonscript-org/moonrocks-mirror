package = "luajit-zstd"
version = "0.2.3-1"

source = {
   url = "git://github.com/sjnam/luajit-zstd",
   tag = "v0.2.3",
}

description = {
   summary = "Facebook zstandard ffi binding",
   license = "Public Domain",
   homepage = "https://github.com/sjnam/luajit-zstd",
   maintainer = "Soojin Nam <jsunam@gmail.com>",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
     ["zstd"] = "zstd.lua",
   }
}