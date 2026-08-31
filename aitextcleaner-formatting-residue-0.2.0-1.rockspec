package = "aitextcleaner-formatting-residue"
version = "0.2.0-1"
source = {
   url = "https://github.com/bbwdadfg/aitextcleaner-formatting-residue/archive/refs/tags/v0.2.0.tar.gz",
   dir = "aitextcleaner-formatting-residue-0.2.0/ecosystems/luarocks"
}
description = {
   summary = "Local formatting-residue cleanup helper for copied text.",
   homepage = "https://aitextcleaner.pro/",
   license = "MIT"
}
dependencies = {"lua >= 5.1"}
build = {
   type = "builtin",
   modules = {
      aitextcleaner_formatting_residue = "aitextcleaner_formatting_residue.lua"
   }
}
