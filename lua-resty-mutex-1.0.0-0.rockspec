package = "lua-resty-mutex"
version = "1.0.0-0"
source = {
    url = "git+https://github.com/fesily/lua-resty-mutex.git",
}
description = {
    homepage = "https://github.com/fesily/lua-resty-mutex",
    license = "MIT"
}

build = {
    type = "builtin",
   modules = {
      ["resty.mutex"] = "src/resty/mutex.lua"
   }
}
