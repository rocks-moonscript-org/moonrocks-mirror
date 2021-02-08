package = "todo"
version = "0.0.1-1"
source = {
   url = "git+https://github.com/tammela/todo.git"
}
description = {
   summary = "The stupid todo pile manager",
   detailed = [[
The stupid todo pile manager
]],
   homepage = "https://github.com/tammela/todo",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3",
   "rapidjson ~> 0.6",
   "argparse ~> 0.7",
   "ansicolors ~> 1.0"
}
supported_platforms = {
   "unix"
}
build = {
   type = "command",
   install_command = "install -T todo.lua /usr/local/bin/todo"
}
