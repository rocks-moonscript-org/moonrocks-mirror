rockspec_format = "3.0"
package = "ipapi-lua"
version = "1.1-1"

source = {
    url = "git+https://github.com/jodros/ipapi-lua.git",
}

description = {
    summary = "Lua facility to call IPQwery API and use its data in your scripts...",
    homepage = "https://github.com/jodros/ipapi-lua",
    license = "MIT",
    maintainer = "João Quinaglia"
}

dependencies = {
    "lua >= 5.1",
    "inspect",
    "luasec",
    "lua-cjson",
}

build = {
    type = "builtin",
    modules = {
        ipapi = "ipapi.lua",
   },
}

