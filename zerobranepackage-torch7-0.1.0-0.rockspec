package = "ZeroBranePackage-torch7"
version = "0.1.0-0"
source = {
 url = "git://github.com/pkulchenko/ZeroBranePackage.git",
 branch = "master"
}
description = {
 summary = "torch7 is a ZeroBraneStudio Package mirrored from the official repository",
 detailed = [[torch7 is a ZeroBraneStudio Package mirrored from the official repository.]],
 homepage = "https://github.com/pkulchenko/ZeroBranePackage",
 license = "MIT"
}
dependencies = {
  "lua == 5.1"
}
build = {
 type = "builtin",
 modules = {
  ["torch7"] = "torch7.lua",
 }
}
