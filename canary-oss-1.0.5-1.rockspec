package = "canary-oss"
version = "1.0.5-1"
source = {
   url = "git+https://gitee.com/raoxy/kong-plugins-canary.git"
}
description = {
   detailed = [[
canary插件的使用范围支持global、service、route
## 1.应用场景
- 灰度上线、版本迭代（灰度的量灵活切换）]],
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.canary-oss.handler"] = "kong/plugins/canary-oss/handler.lua",
      ["kong.plugins.canary-oss.init"] = "kong/plugins/canary-oss/init.lua",
      ["kong.plugins.canary-oss.policies.BaseCanary"] = "kong/plugins/canary-oss/policies/BaseCanary.lua",
      ["kong.plugins.canary-oss.policies.CustomizeCanary"] = "kong/plugins/canary-oss/policies/CustomizeCanary.lua",
      ["kong.plugins.canary-oss.policies.DefaultCanary"] = "kong/plugins/canary-oss/policies/DefaultCanary.lua",
      ["kong.plugins.canary-oss.policies.IPCanary"] = "kong/plugins/canary-oss/policies/IPCanary.lua",
      ["kong.plugins.canary-oss.policies.UidCanary"] = "kong/plugins/canary-oss/policies/UidCanary.lua",
      ["kong.plugins.canary-oss.policies.cmatch"] = "kong/plugins/canary-oss/policies/cmatch.lua",
      ["kong.plugins.canary-oss.policies.init"] = "kong/plugins/canary-oss/policies/init.lua",
      ["kong.plugins.canary-oss.schema"] = "kong/plugins/canary-oss/schema.lua"
   },
   copy_directories = {
      "docs"
   }
}
