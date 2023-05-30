package = "ElementsLib"
version = "0.2-1"
source = {
   url = "git+https://github.com/TanCY1/ElementsLib.git",
   tag = "v0.2.0",
}
description = {
   summary = "Module to with data about the periodic table",
   detailed = [[Elements is a module for users to acees the periodictable.
                  it provide the command locate() which provides an interface for users to locate attributes of elements.]],
   homepage = "https://github.com/TanCY1/ElementsLib",
   license = "GPLv3",
}
build = {
   type = "builtin",
   modules = {
      Elements = "Elements.lua"
   }
}
