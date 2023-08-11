package = "ele"
version = "0.1.0-2"
source = {
  url = "git+ssh://git@github.com/civboot/ele.git"
}
description = {
  summary = "Ele: an Extensible Lua Editor",
  detailed = [[
> WARNING: Ele and Shele are in the early design/implementation phase and are
> not even remotely useable.
]],
  homepage = "https://github.com/civboot/ele",
  license = "UNLICENSE"
}
dependencies = {
  "lua ~> 5.3",
  "civ > 0.1.0",
}
build = {
  type = "builtin",
  modules = {
    ele = "ele.lua",
    ["ele.action"] = "ele/action.lua",
    ["ele.bindings"] = "ele/bindings.lua",
    ["ele.buffer"] = "ele/buffer.lua",
    ["ele.data"] = "ele/data.lua",
    ["ele.edit"] = "ele/edit.lua",
    ["ele.gap"] = "ele/gap.lua",
    ["ele.model"] = "ele/model.lua",
    ["ele.motion"] = "ele/motion.lua",
    ["ele.term"] = "ele/term.lua",
    ["ele.types"] = "ele/types.lua",
    ["ele.window"] = "ele/window.lua",
    ["notes.coroutine"] = "notes/coroutine.lua",
    ["notes.load"] = "notes/load.lua",
    ["notes.play"] = "notes/play.lua",
    ["tests.test_buffer"] = "tests/test_buffer.lua",
    ["tests.test_gap"] = "tests/test_gap.lua",
    ["tests.test_model"] = "tests/test_model.lua",
    ["tests.test_motion"] = "tests/test_motion.lua"
  },
  copy_directories = {
    "tests"
  }
}
