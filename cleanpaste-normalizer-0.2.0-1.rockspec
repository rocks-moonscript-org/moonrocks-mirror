package = "cleanpaste-normalizer"
version = "0.2.0-1"
source = {
   url = "https://github.com/bbwdadfg/cleanpaste-normalizer/archive/refs/tags/v0.2.0.tar.gz",
   dir = "cleanpaste-normalizer-0.2.0/surfaces/luarocks"
}
description = {
   summary = "Local pasted-text normalization helper.",
   homepage = "https://cleanpasteai.com/",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = { cleanpaste_normalizer = "src/cleanpaste_normalizer.lua" }
}
