rockspec_format = "3.0"
package = "lamda"
version = "0.1.0-1"
source = {
   url = "https://github.com/helpermethod/lamda",
   tag = "0.1.0"
}
description = {
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build_dependencies = {
   "luacheck = 0.23.0-1",
   "dkjson = 2.5-2"
}
test_dependencies = {
   "busted = 2.0.rc12-1",
   "luacov = 0.13.0-1"
}
test = {
   type = "busted"
}
