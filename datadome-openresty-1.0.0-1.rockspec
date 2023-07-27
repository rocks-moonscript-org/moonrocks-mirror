package = "datadome-openresty"  
version = "1.0.0-1"

supported_platforms = {"linux", "macosx"}
source = {
  url = "///var/tmp/datadome-openresty.tar.gz"
}

description = {
  summary = "Datadome openresty detects and protects against bot activity",
  homepage = "https://datadome.co/",
  license = "Apache 2.0"
}

dependencies = {
  "lua-resty-http == 0.17.1"
}

build = {
  type = "builtin",
  modules = {
    datadome_openresty = "src/datadome_openresty.lua",
  }
}
