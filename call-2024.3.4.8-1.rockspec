package = "call"
version = "2024.3.4.8-1"
rockspec_format = "3.0"
source = {
   url = "git+https://github.com/hajekmi/call.lua.git",
   tag = "2024.3.4.8"
}
description = {
   summary = "Autoload modules",
   detailed = "Autoload modules via files and dirs",
   homepage = "https://github.com/hajekmi/call.lua",
   license = "MIT",
   maintainer = "Michal Hajek <michal@hajek.net>",
   labels = { "autoload" },
}
dependencies = {
	"lua >= 5.3",
}
build = {
   type = "builtin",
   modules = {
      call = "src/call.lua",
   }
}
test = {
   type = "command",
   command = "make test",
}
