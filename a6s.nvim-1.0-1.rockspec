rockspec_format = "3.0"
package = "a6s.nvim"
version = "1.0-1"

source = {
  url = "git+https://github.com/The-Autonoma/a6s-nvim.git",
  tag = "v1.0.0",
}

description = {
  summary = "Neovim client for the A6s Code daemon",
  detailed = [[
    Official Neovim integration for A6s Code. Connects to the local
    A6s CLI daemon over WebSocket (ws://localhost:9876/ws) and provides
    commands to invoke agents, stream RIGOR phase updates, review/apply
    artifacts, and manage background tasks. Pure Lua, Neovim 0.9+.
  ]],
  homepage = "https://github.com/The-Autonoma/a6s-nvim",
  license = "MIT",
  labels = { "neovim", "ai", "a6s", "websocket" },
}

dependencies = {
  "lua >= 5.1",
  "plenary.nvim",
}

test_dependencies = {
  "plenary.nvim",
}

build = {
  type = "builtin",
  copy_directories = { "doc", "plugin" },
}

test = {
  type = "command",
  command = "make test",
}
