package = "luajit-zstd"
version = "0.2.1-1"

source = {
   url = "git://github.com/sjnam/luajit-zstd",
   tag = "v0.2.1"
}

description = {
   summary = "facebook zstandard ffi binding",
   license = "Public Domain",
   homepage = "https://github.com/sjnam/luajit-zstd",
   maintainer = "Soojin Nam <jsunam@gmail.com>"
}

build = {
   type = "builtin",
   modules = {
      ["zstd"] = "zstd.lua"
   }
}
