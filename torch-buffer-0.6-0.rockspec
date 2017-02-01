package = "torch-buffer"
version = "0.6-0"
source = {
    url = "https://github.com/gforge/torch-buffer/archive/v0.6-0.tar.gz",
    dir = "torch-buffer-0.6-0"
}
description = {
    summary = "A simple buffer for torch",
    detailed = [[
       A simple numeric buffer that can calculate mean and standard deviation
    ]],
    homepage = "https://github.com/gforge/torch-buffer",
    license = "MIT/X11",
    maintainer = "Max Gordon"
}
dependencies = {
    "lua >= 5.1",
    "torch >= 7.0",
    "argcheck >= 2.0",
    "torch-dir-loader >= 0.6"
}
build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      LUA_PATH="$(LUADIR)"
   }
}
