
package = "pprint"
version = "0.2.0-0"
source = {
  url = "git://github.com/zlj-zz/pprint.git",
  tag = "v0.2.0", -- git tag
}
description = {
  summary = "A lua library completes data beautification output.",
  detailed = [[
      Pure lua implementation, no external lib dependencies.
  ]],
  homepage = "https://github.com/zlj-zz/pprint",
  license = "MIT",
  maintainer = "Zachary Zhang<zlj19971222@outlook.com>",
}
dependencies = {
  "lua >= 5.2" -- 依赖列表
}
build = {
  type = "builtin",
  modules = {
    ["pprint"] = "pprint.lua" -- lua mode: *.lua
    -- 将库中的其他模块（Lua 文件）列为其他条目
  }
}
