package = "kong-lib-logger"
version = "0.3.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-lib-logger.git",
  tag = "0.3.0"
}
description = {
  summary = "A simple logger library for kong",
  homepage = "https://github.com/emartech/kong-lib-logger",
  license = "UNLICENSED"
}
dependencies = {
  "classic >= 0.1.0-1",
  "lua-cjson >= 2.1.0-1 "
}
build = {
  type = "builtin",
  modules = {
    logger = "src/logger.lua"
  }
}
