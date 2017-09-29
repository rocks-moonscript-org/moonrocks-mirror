package = "lustache-lambdas"
version = "0.0.3-0"
source = {
  url = "https://github.com/urzds/lustache-lambdas/archive/v0.0.3-0.tar.gz",
  dir = "lustache-lambdas-0.0.3-0"
}
description = {
  summary = "Useful lambdas for {{lustache}}",
  detailed = [[
    Find out more about Mustache at http://mustache.github.com.
  ]],
  homepage = "http://github.com/urzds/lustache-lambdas/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lustache >= 1.3"
}
build = {
  type = "builtin",
  modules = {
    lustache_lambdas = "src/lustache_lambdas.lua",
  }
}
