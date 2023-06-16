package = "datadome-openresty"  
version = "0.0.2-1"

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
  "lua-resty-http"
}

build = {
  type = "builtin",
  modules = {
    datadome_openresty = "src/datadome_openresty.lua",
  }
}
