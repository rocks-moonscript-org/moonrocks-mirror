package = "wtf"
version = "0.1-1"
source = {
   url = "git+https://github.com/honeybot/wtf",
   tag = "0.1"
}
description = {
   summary = "WTF is a Web Tailoring Framework built on top of Nginx/Openresty",
   homepage = "https://github.com/honeybot/wtf",
   license = "MIT"
}
dependencies = {
   "luafilesystem >= 1.7"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.actions.log"] = "wtf/actions/log.lua",
      ["wtf.core.classes.action"] = "wtf/core/classes/action.lua",
      ["wtf.core.classes.configurable_object"] = "wtf/core/classes/configurable_object.lua",
      ["wtf.core.classes.instance"] = "wtf/core/classes/instance.lua",
      ["wtf.core.classes.object"] = "wtf/core/classes/object.lua",
      ["wtf.core.classes.plugin"] = "wtf/core/classes/plugin.lua",
      ["wtf.core.classes.policy"] = "wtf/core/classes/policy.lua",
      ["wtf.core.classes.solver"] = "wtf/core/classes/solver.lua",
      ["wtf.core.classes.storage"] = "wtf/core/classes/storage.lua",
      ["wtf.core.loader"] = "wtf/core/loader.lua",
      ["wtf.core.tools"] = "wtf/core/tools.lua",
      ["wtf.plugins.demo.hello_world"] = "wtf/plugins/demo/hello_world.lua",
      ["wtf.solvers.demo_solver"] = "wtf/solvers/demo_solver.lua"
   },
   copy_directories = {"nginx", "policy", "vendor"}
}
