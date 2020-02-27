package = "createtable"
version = "0.2-1"

description = {
    summary = "Bindings for the lua_createtable() function",
    homepage = "https://gitlab.com/craigbarnes/lua-createtable",
    license = "Apache-2.0"
}

source = {
    url = "https://craigbarnes.gitlab.io/dist/lua-createtable/lua-createtable-0.2.tar.gz",
    md5 = "e2e754535cef085d1e0fd30bef50537d"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        createtable = "createtable.c"
    }
}
