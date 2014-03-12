package = "Simulua"
version = "0.1-1"
source = {
  url = "http://luaforge.net/frs/download.php/3645/simulua-0.1.tar.gz"
}
description = {
  summary = "Simulua is a discrete-event process-oriented simulation library for Lua.",
  detailed = [[
    Simulua is a discrete-event simulation library for Lua. The simulation in
    Simulua is process-oriented, that is, the operation path of a simulated
    system is obtained from interactions of processes running in parallel and
    managed by an event list.
  ]],
  homepage = "http://simulua.luaforge.net",
  license = "MIT/X11"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "module",
  modules = {
    simulua = "simulua.lua",
    -- containers
    binomial = "lib/binomial.c",
    queue = "lib/queue.c",
    stack = "lib/stack.c",
    -- probability related
    rng = {"lib/ranlib.c", "lib/mt.c", "lib/rng.c"},
    cdf = {"lib/dcdflib.c", "lib/ipmpar.c", "lib/cdf.c"}
  }
}

-- vim: set syn=lua :
