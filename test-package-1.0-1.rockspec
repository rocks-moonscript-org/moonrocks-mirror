package = "test-package"
version = "1.0-1"
source = {
   url = "git://github.com/youxingx/test-package.git",
   tag = "v1.0-1",
   branch = "master"
}
description = {
   homepage = "https://github.com/youxingx/test-package",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
   	["test-package"] = "test-package.lua"
   }
}
