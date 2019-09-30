package = "cmft-kong-1"
version = "1.1.1-0"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/AnneXXB/cmft-kong.git",
  tag = "1.1.1"
}
description = {
  summary = "inline kong dockerfile",
  homepage = "https://www.cmft.com",
  license = "Apache 2.0"
}
dependencies = {
  "inspect == 3.1.1",
}
build = {
  type = "builtin",
  modules = {
    ["main.login"]="main.lua"
  }
}
