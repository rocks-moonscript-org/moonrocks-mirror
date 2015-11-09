package = "tundrawolf"
version = "1.0.0-0"
source = {
  url = "https://github.com/aimingoo/tundrawolf/archive/v1.0.0.tar.gz",
  dir = "tundrawolf-1.0.0"
}
description = {
  summary = "tundrawolf - distribution task for nginx_lua",
  detailed = [[
    tundrawolf is implement of PEDT(Parallel Exchangeable Distribution Task) specifications in nginx_lua.
  ]],
  homepage = "https://github.com/aimingoo/tundrawolf",
  license = "Apache-2.0"
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["tundrawolf"]  = "lib/Distributed.lua",
    ["tundrawolf.infra.taskhelper"]  = "infra/taskhelper.lua",
    ["tundrawolf.infra.httphelper"]  = "infra/httphelper.lua",
    ["tundrawolf.dbg.register_center"]  = "infra/dbg_register_center.lua",
    ["tundrawolf.dbg.resource_center"]  = "infra/dbg_resource_center.lua",
    ["lib.Promise"]  = "lib/Promise.lua",
  }
}
