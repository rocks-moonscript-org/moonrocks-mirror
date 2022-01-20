package = "api7-dkjson"
version = "0.1.1-0"
source = {
  -- the source url must be specified as git:// or an http to a tar.gz
  -- see https://github.com/mogui/kong-external-oauth/issues/2#issuecomment-316393647
  url = "git://github.com/api7/test-toolkit",
  branch = "v0.1.1",
}
description = {
  summary = "A fork of dkjson",
  homepage = "https://github.com/api7/test-toolkit",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
  type = "builtin",
  modules = {
    dkjson = "json.lua"
  }
}
