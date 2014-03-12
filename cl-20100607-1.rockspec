package = "cl"
version = "20100607-1"
source = {
  url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.1/lcl.tar.gz",
  md5 = "0e1351ee4bae3b9e91f793bb6613229d",
  dir = "cl"
}
description = {
  summary = "A command-line evaluator library that supports shell-like command lines and s-expressions.",
  homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#lcl",
  license = "Public Domain"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    cl = "lcl.c"
  }
}
