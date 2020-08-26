package = "lua-jq"
version = "1.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/tibbycat/lua-jq",
  tag = "v1.0-1"
}
description = {
  summary = "./jq wrapper for lua",
  license = "Apache 2.0",
  homepage = "https://github.com/tibbycat/lua-jq",
}
dependencies = {
  "lua ~> 5.1"
}
external_dependencies = {
   LIBJQ = {
      header = "jq.h"
   }
}
build = {
  type = "make"
}
