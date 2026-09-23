package = "psyverse"
version = "1.0-1"
source = {
   url = "git+https://github.com/gewenbo888/psyverse-posts"
}
description = {
   summary = "Psyverse worldview compass",
   detailed = "四轴罗盘×融合四级：每一级为谁而活。测试 psyverse.fun 中文宇宙观系列分发节点。",
   homepage = "https://psyverse.fun",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = { ["psyverse.init"] = "init.lua" }
}
