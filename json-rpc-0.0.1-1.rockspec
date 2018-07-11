package = "json-rpc"
version = "0.0.1-1"
source = {
  url = "git://github.com/aleclarson/lua-json-rpc.git";
  tag = "0.0.1";
}
description = {
  summary = "JSON events for long-lived connections";
  license = "MIT";
  homepage = "https://github.com/aleclarson/lua-json-rpc";
}
dependencies = {
  "lua >= 5.1";
}
build = {
  type = "builtin";
  modules = {
    ["json-rpc"] = "json-rpc.lua";
  };
}
