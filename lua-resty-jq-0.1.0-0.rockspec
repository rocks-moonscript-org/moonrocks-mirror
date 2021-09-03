package = "lua-resty-jq"
version = "0.1.0-0"

source = {
  url = "git://github.com/bungle/lua-resty-jq",
  tag = "0.1.0"
}

description = {
  summary = "LuaJIT FFI bindings to libjq",
  license = "BSD",
}

dependencies = {
  "lua == 5.1"; -- Really "luajit >= 2.0.2"
}

build = {
  type = "builtin",
  modules = {
    ["resty.jq"] = "lib/resty/jq.lua",
  }
}
