package = "mod11"
version = "1.0-1"

description = {
   summary = "Modulo11 checksum calculator and verificator",
   detailed = [[
      Modulo11 checksums are generally used to provide protection against 
      human errors. Typical examples include creditcard numbers, bank
      account numbers or invoice numbers. If input passes then it is not said 
      it is correct, but simple human errors like typo's or switching numbers 
      can be easily cought.
      The module allows to generate checksums, validate them and to iterate 
      them in a text (eg. search a file with bank transaction details for 
      valid invoice numbers)
   ]],
   license = "MIT",
   homepage = "https://github.com/Tieske/mod11",
}

dependencies = {
   "lua >= 5.1, < 5.3 "
}

source = {
   url = "https://github.com/Tieske/mod11/archive/version_1.0.tar.gz",
   dir = "mod11-version_1.0",
}

build = {
   type = "builtin",
   modules = {
      mod11 = "src/mod11.lua"
   }
}

