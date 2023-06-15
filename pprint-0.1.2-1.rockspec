package = "pprint"
version = "0.1.2-1"
source = {
  url = "git://github.com/zlj-zz/pprint.git", -- 用您的GitHub地址替换
  tag = "v0.1.2", -- 对应源码仓库发布的版本号
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
    ["pprint"] = "pprint.lua" -- = 模块名: Lua文件名
    -- 将库中的其他模块（Lua 文件）列为其他条目
  }
}
