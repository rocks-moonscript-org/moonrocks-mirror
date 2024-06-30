package = "pgmoon-sm3"
version = "1.0-1"

source = {
  url = "git+https://github.com/roger-qcj/pgmoon.git",
  branch = "v1.0"
}

description = {
  summary = "Postgres driver for OpenResty and Lua, support sm3",
  detailed = [[PostgreSQL driver written in pure Lua for use with OpenResty's cosocket API. Can also be used in regular Lua with LuaSocket and LuaCrypto.]],
  homepage = "https://github.com/roger-qcj/pgmoon",
  maintainer = "qiuchenjun <qiuchenjun@gmail.com>",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lpeg",
}

build = {
  type = "builtin",
  modules = {
    ["pgmoon"] = "pgmoon/init.lua",
    ["pgmoon.arrays"] = "pgmoon/arrays.lua",
    ["pgmoon.bit"] = "pgmoon/bit.lua",
    ["pgmoon.cqueues"] = "pgmoon/cqueues.lua",
    ["pgmoon.crypto"] = "pgmoon/crypto.lua",
    ["pgmoon.hstore"] = "pgmoon/hstore.lua",
    ["pgmoon.json"] = "pgmoon/json.lua",
    ["pgmoon.socket"] = "pgmoon/socket.lua",
    ["pgmoon.util"] = "pgmoon/util.lua",
  },
}

