package = "raisin"
version = "3.0-1"
description = {
  summary = "Threads made easy",
  detailed = [[
    Raisin is a priority based coroutine manager with a few additional twists.
    Its name in its prototyping stage was originally 'ryzen', the joke being
    that it was a 'threadripper'. Obviously that name is a poor choice, so
    something similar was decided upon. As is evident Raisin is designed for
    lua's coroutines to allow for many freedoms, such as manual prioritization,
    grouping, toggling, and a manual coroutine death termination amount.]],
  homepage = "https://github.com/hugeblank/raisin",
}
source = {
  url = "git://github.com/hugeblank/raisin.git",
  tag = "v3.0",
}
build = {
  type = "builtin",
  modules = { ["raisin"] = "raisin.lua" },
}