rockspec_format = "3.0"
package = "enapter-ucm"
version = "0.1-0"
source = {
  url = "git+ssh://git@github.com/Enapter/enapter-ucm.lua"
}
description = {
  homepage = "http://developers.enapter.com",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.3"
}
test_dependencies = {
  "busted",
  "luacov",
  "inspect"
}
build = {
  type = "builtin",
  modules = {
    ["enapter.ucm.config"] = "enapter/ucm/config.lua"
  }
}
test = {
  type = "busted"
}
