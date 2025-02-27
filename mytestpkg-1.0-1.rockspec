package = "mytestpkg"
version = "1.0-1"
source = {
   url = "git+https://github.com/dr-montasir/mytestpkg.git"
}
description = {
   summary = "A simple math package for sine calculations",
   detailed = [[This package provides functions to calculate the sine of angles in degrees and radians.
   ]],
   homepage = "https://github.com/dr-montasir/mytestpkg",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      mytestpkg = "mytestpkg.lua"
   }
}