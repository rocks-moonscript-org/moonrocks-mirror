package = "fr"
version = "0.1.1-1"
source = {
  url = "git://github.com/aiverson/frlua.git"
}
description = {
  summary = "Functional Reactive programming capabilities in Lua.",
  detailed = [[FRLua is a library inspired by Bacon.js to provide Functional Reactive programming capabilities in Lua.
It is targeted at luajit 2.1 and lua >=5.1 <5.4.
It is currently implemented in pure lua.
This package uses semver.]],
  homepage = "https://github.com/aiverson/frlua",
  license = "MIT",
  maintainer = "Alex Iverson <alexjiverson@gmail.com>"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
  type = "builtin",
  modules = {
    fr = "fr.lua",

    ["fr.bus"] = "fr/bus.lua",
    ["fr.combineTemplate"] = "fr/combineTemplate.lua",
    ["fr.eventStream"] = "fr/eventStream.lua",
    ["fr.fromTable"] = "fr/fromTable.lua",
    ["fr.functionTools"] = "fr/functionTools.lua",
    ["fr.isObservable"] = "fr/isObservable.lua",
    ["fr.never"] = "fr/never.lua",
    ["fr.once"] = "fr/once.lua",
    ["fr.property"] = "fr/property.lua",
    ["fr.repeat"] = "fr/repeat.lua",
  },
  copy_directories = {
    "tests"
  }
}
