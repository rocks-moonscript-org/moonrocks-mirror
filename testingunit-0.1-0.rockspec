package = "TestingUnit"
version = "0.1-0"
source = {
    url = "https://github.com/ldrumm/testingunit/archive/master.zip"
}
description = {
    summary="Another unit testing library for Lua inspired by Python's unittest.",
    detailed=[[Another unit testing library for Lua inspired by Python's unittest.

TestingUnit is a very simple but fairly featureful and useful unit test 
runner for Lua that does auto test descovery, fixtures, and expected failures.
]],
    homepage="https://github.com/ldrumm/testingunit",
    license="MIT"
}
dependencies={
    "lua >= 5.1"
}
build ={
    type = "builtin",
    modules = {
      -- A simple module written in Lua
      testingunit = "src/testingunit.lua",
    }
}
