package = "tqdm-lua"
version = "1.0-1"
source = {
   url = "git://github.com/Nepta/tqdm-lua",
   tag = "v1.0"
}
description = {
   homepage = "https://github.com/Nepta/tqdm-lua",
   license = "MIT"
}
build = {
   type = "cmake",
   variables = {
      LIBDIR="$(LIBDIR)",
      CMAKE_BUILD_TYPE="Release"
   }
}
