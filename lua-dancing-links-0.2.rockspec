package = "lua-dancing-links"
version = "0.2"
source = {
    url = "https://github.com/sjnam/lua-dancing-links.git",
}
description = {
    summary = "Donald Knuth's Algorithm 7.2.2.1 for exact cover via dancing links",
    homepage = "https://github.com/sjnam/lua-dancing-links",
    maintainer = "Soojin Nam <jsunam@gamil.com>",
}
dependencies = {
    "lua >= 5.2",
}
build = {
   type = "builtin",
   modules = {
       ["dlx1"] = "dlx1.lua",
       ["dlx2"] = "dlx2.lua",       
   },
}
