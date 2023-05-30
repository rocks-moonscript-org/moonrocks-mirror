rockspec_format = "3.0"
package = "enapter-sma"
version = "0.2-0"
source = {
  url = "git+ssh://git@github.com/Enapter/enapter-sma.lua"
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
    ["enapter.sma.modbustcp"] = "enapter/sma/modbustcp.lua"
  }
}
test = {
  type = "busted"
}
