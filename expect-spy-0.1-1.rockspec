rockspec_format = "3.0"
package = "expect-spy"
version = "0.1-1"
description = {
  summary = "expect package plugin for spies",
  homepage = "https://github.com/sveyret/expect-spy",
  license = "MIT",
}
source = {
  url = "git+https://github.com/sveyret/expect-spy"
}
dependencies = {
  "expect",
  "luassert",
}
test_dependencies = {
  "busted",
}
build = {
  type = "builtin",
  modules = {
    ["expect-spy"] = "expect-spy.lua",
  },
}
test = {
  type = "busted",
}