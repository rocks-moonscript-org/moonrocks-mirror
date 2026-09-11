package = "lua-resty-jq"
version = "0.2.1-0"

source = {
  url = "git+https://github.com/bungle/lua-resty-jq",
  tag = "0.2.1",
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
    ["resty.jq"] = "lib/resty/jq/init.lua",
    ["resty.jq.lib"] = "lib/resty/jq/lib.lua",
  },
}
