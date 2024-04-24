package = "datadome-openresty"  
version = "1.3.0-1"

supported_platforms = {"linux", "macosx"}
source = {
  url = "///var/tmp/datadome-openresty.tar.gz"
}

description = {
  summary = "OpenResty module for DataDome Bot Protection",
  homepage = "https://docs.datadome.co/docs/openresty",
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
