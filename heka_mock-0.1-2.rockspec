 package = "heka_mock"
 version = "0.1-2"
 source = {
    url = "git://github.com/timurb/heka_mock.git",
    tag = "v0.1"
 }
 description = {
    summary = "Helper for unit-testing of Heka lua sandboxes",
    detailed = [[
      This is a helper to do unit testing of Heka lua sandboxes: encoders and decoders.
    ]],
    homepage = "https://github.com/timurb/heka_mock",
    license = "MIT"
 }
 dependencies = {
    "lua >= 5.1"
 }
 build = {
    type = "builtin",
    modules = {
      heka_mock = "heka_mock.lua"
    }
 }
