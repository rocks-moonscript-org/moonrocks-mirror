package = "mrcp-utils"
version = "1.0-0"
source = {
   url = "git://github.com/MayamaTakeshi/lua_mrcp_utils",
   tag = "1.0-0",
}
description = {
   summary = "Some functions to help building MRCP (Media Resource Control Protocol) messages",
   homepage = "https://github.com/MayamaTakeshi/lua_mrcp_utils",
   license = "MIT",
}
dependencies = {
}
build = {
    type = "builtin",
    modules = {
        mrcp_utils = "mrcp_utils.lua",
    }
}
