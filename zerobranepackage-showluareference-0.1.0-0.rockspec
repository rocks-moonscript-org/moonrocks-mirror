package = "ZeroBranePackage-showluareference"
version = "0.1.0-0"
source = {
 url = "git://github.com/pkulchenko/ZeroBranePackage.git",
 branch = "master"
}
description = {
 summary = "showluareference is a ZeroBraneStudio Package mirrored from the official repository",
 detailed = [[showluareference is a ZeroBraneStudio Package mirrored from the official repository.]],
 homepage = "https://github.com/pkulchenko/ZeroBranePackage",
 license = "MIT"
}
dependencies = {
  "lua == 5.1"
}
build = {
 type = "builtin",
 modules = {
  ["showluareference"] = "showluareference.lua",
 }
}
