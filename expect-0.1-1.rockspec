rockspec_format = "3.0"
package = "expect"
version = "0.1-1"
description = {
  summary = "BDD expect notation for LUA tests",
  homepage = "https://github.com/sveyret/expect",
  license = "MIT",
}
source = {
  url = "git+https://github.com/sveyret/expect"
}
test_dependencies = {
  "busted",
}
build = {
  type = "builtin",
  modules = {
    expect = "expect.lua",
    ["expect.ControlData"] = "expect/ControlData.lua",
    ["expect.DiffTable"] = "expect/DiffTable.lua",
    ["expect.Expect"] = "expect/Expect.lua",
    ["expect.FailureMessage"] = "expect/FailureMessage.lua",
    ["expect.core"] = "expect/core.lua",
  },
}
test = {
  type = "busted",
}