package = "wch"
version = "0.0.1-1"

source = {
  url = "git://github.com/aleclarson/lua-wch.git";
  tag = "0.0.1";
}

description = {
  summary = "wch client for Lua";
  license = "MIT";
  homepage = "https://github.com/aleclarson/lua-wch";
}

dependencies = {
  "lua >= 5.2";
  "uuid >= 0.2";
  "quest >= 0.0.1";
  "emitter >= 0.0.3";
  "json-rpc >= 0.0.1";
  "cqueues >= 20171014";
}

build = {
  type = "builtin";
  modules = {
    ["wch"] = "wch/init.lua";
  };
}
