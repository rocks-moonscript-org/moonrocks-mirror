package = "awesome-scratchpad"
version = "1.0-1"
source = {
    url = "git+https://github.com/hadiali6/scratchpad",
}
description = {
    summary = "Scratchpad module for AwesomeWM.",
    detailed = [[
A Scratchpad module for AwesomeWM.

Note: Depends on 'awful' and 'gears' which are AwesomeWM libraries.
    ]],
    homepage = "https://github.com/hadiali6/scratchpad",
    license = "GPL-3",
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
     ["scratchpad"] = "init.lua",
   }
}
