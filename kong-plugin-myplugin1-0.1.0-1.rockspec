package = 'kong-plugin-myplugin1'
version = '0.1.0-1'

supported_platforms = {"linux", "macosx"}
source = {	
  url = "https://github.com/ApexPredator1/rock_test/raw/master/test.tar.gz",
}

description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "http://getkong.org",
  license = "Apache 2.0"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..'myplugin'..".handler"] = "handler.lua",
    ["kong.plugins."..'myplugin'..".schema"] = "schema.lua",
  }
}
