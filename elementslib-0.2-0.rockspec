package = "ElementsLib"
version = "0.2-0"
source = {
   url = "git+https://github.com/TanCY1/ElementsLib.git",
   tag = "v0.2.0",
}
description = {
   detailed = [[
## Usage
|Method                |Description|
| ------------------- |  ---------------------------------------------------- |
|locate(I,W,O)| I: Type of element to be searched </br> W: Element to be searched </br> O: Return type|
|table|List of all elements in the periodic table and their attributes|]],
   homepage = "https://github.com/TanCY1/ElementsLib",
   license = "GPLv3"
}
build = {
   type = "builtin",
   modules = {
      Elements = "Elements.lua"
   }
}
