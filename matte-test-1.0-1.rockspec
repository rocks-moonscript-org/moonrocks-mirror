package = "matte-test"
version = "1.0-1"
source = { url = "file:///Users/matthewellis/projects/bundlelab-test-packages/bundlelab-lua-test/matte-test-1.0.tar.gz" }
description = {
   summary = "BundleLab Lua integration test package",
   license = "MIT"
}
dependencies = { "lua >= 5.1" }
build = {
   type = "builtin",
   modules = { matte_test = "matte_test.lua" }
}
