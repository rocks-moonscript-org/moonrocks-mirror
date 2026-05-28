package = "evasive"
version = "0.1-0"
source = {
   url = "git+https://www.github.com/code-nuage/evasive",
   tag = "0.1-0"
}
description = {
   homepage = "https://www.github.com/code-nuage/evasive",
   license = "MIT"
}
dependencies = {
   "http >= 0.4-0",
   "mimetypes >= 1.1.0-2",
   "ansicolors >= 1.0.2-3"
}
build = {
   type = "builtin",
   modules = {
      ["evasive.mime"] = "src/mime.lua",
      ["evasive.colors"] = "src/colors.lua",
      ["evasive.route"] = "src/route.lua",
      ["evasive.request"] = "src/request.lua",
      ["evasive.response"] = "src/response.lua",
      ["evasive.router"] = "src/router.lua"
   }
}
