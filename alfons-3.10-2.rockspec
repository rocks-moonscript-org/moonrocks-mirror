build = {
  install = {
    bin = {
      alfons = "alfons.lua"
    }
  },
  modules = {
    ["alfons.tasks.fetch"] = "tasks/fetch.lua",
    ["alfons.tasks.ms-compile"] = "tasks/ms-compile.lua",
    ["alfons.tasks.publish-rockspec"] = "tasks/publish-rockspec.lua"
  },
  type = "builtin"
}
dependencies = {
  "filekit >= 1.3",
  "ansikit",
  "lua >= 5.1"
}
description = {
  detailed = "alfons is a small script utility that lets you run tasks from a file (Lua or MoonScript), to better manage your project with tasks such as clean, compile, etc. To run tasks from a MoonScript file, you will need the moonscript rock.\n",
  homepage = "https://github.com/daelvn/alfons",
  summary = "Small program to run tasks for your project"
}
package = "alfons"
rockspec_format = "3.0"
source = {
  branch = "three",
  tag = "v3.10",
  url = "git://github.com/daelvn/alfons"
}
version = "3.10-2"
