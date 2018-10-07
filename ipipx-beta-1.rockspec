package = "ipipx"
version = "beta-1"
source = {
  url = "git://github.com/ym/lua-ipipx.git"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ipipx = {
      sources = {"ipipx.c"}
    }
  }
}