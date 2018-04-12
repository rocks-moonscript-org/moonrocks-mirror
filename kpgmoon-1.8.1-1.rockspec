package = "kpgmoon"
version = "1.8.1-1"

source = {
  url = "git://github.com/Kong/pgmoon.git",
  tag = "1.8.1"
}

description = {
  summary = "Postgres driver for OpenResty and Lua",
  detailed = [[PostgreSQL driver written in pure Lua for use with OpenResty's cosocket API. Can also be used in regular Lua with LuaSocket and LuaCrypto.]],
  homepage = "https://github.com/leafo/pgmoon",
  maintainer = "Leaf Corcoran <leafot@gmail.com>",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "luabitop",
  "lpeg",
}

build = {
  type = "builtin",
  modules = {
    ["kpgmoon"] = "kpgmoon/init.lua",
    ["kpgmoon.arrays"] = "kpgmoon/arrays.lua",
    ["kpgmoon.cqueues"] = "kpgmoon/cqueues.lua",
    ["kpgmoon.crypto"] = "kpgmoon/crypto.lua",
    ["kpgmoon.hstore"] = "kpgmoon/hstore.lua",
    ["kpgmoon.json"] = "kpgmoon/json.lua",
    ["kpgmoon.socket"] = "kpgmoon/socket.lua",
    ["kpgmoon.util"] = "kpgmoon/util.lua",
  },
}

