package = "nvtx"
version = "0.1-1"

source = {
   url = "git://github.com/apaszke/torch-nvtx.git"
}

description = {
   summary = "NVIDIA Tools Extension Library wrapper for Torch",
   detailed = [[
   ]],
   homepage = "https://github.com/apaszke/torch-nvtx",
   license = "BSD"
}

dependencies = {
  "torch",
}

build = {
   type = "cmake",
   variables = {
      CMAKE_BUILD_TYPE="Release",
      CMAKE_PREFIX_PATH="$(LUA_BINDIR)/..",
      LUA_PATH="$(LUADIR)",
      LUA_CPATH="$(LIBDIR)"
   }
}
