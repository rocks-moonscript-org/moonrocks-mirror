package = "lua-laxjson"
version = "0.3.5-1"

source = {
   url = "git://github.com/sjnam/lua-laxjson",
   tag = "v0.3.5"
}

description = {
   summary = "liblaxjson ffi binding",
   license = "Public Domain",
   homepage = "https://github.com/sjnam/lua-laxjson",
   maintainer = "Soojin Nam <jsunam@gmail.com>"
}

build = {
   type = "builtin",
   modules = {
      ["laxjson"] = "lib/laxjson.lua"
   }
}
