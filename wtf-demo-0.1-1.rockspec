package = "wtf-demo"
version = "0.1-1"
source = {
   url = "git+https://github.com/honeybot/wtf-demo",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/wtf-demo",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["wtf.actions.log"] = "wtf/actions/log.lua",
      ["wtf.plugins.demo.hello_world"] = "wtf/plugins/demo/hello_world.lua",
      ["wtf.solvers.demo_solver"] = "wtf/solvers/demo_solver.lua"
   }
}
