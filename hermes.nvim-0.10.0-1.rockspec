rockspec_format = "3.0"

package = "hermes.nvim"
version = "0.10.0-1"

source = {
  url = "https://github.com/Ruddickmg/hermes.nvim/archive/refs/tags/v0.10.0.tar.gz",
  dir = "hermes.nvim-0.10.0",
}

description = {
  summary = "ACP (Agent Client Protocol) client for Neovim",
  detailed = [[
    Hermes is an interface between Neovim and ACP (Agent Client Protocol),
    enabling AI assistant integration directly within Neovim.
  ]],
  homepage = "https://github.com/Ruddickmg/hermes.nvim",
  license = "MIT",
  maintainer = "Ruddickmg"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["hermes"] = "lua/hermes/init.lua",
    ["hermes.binary"] = "lua/hermes/binary.lua",
    ["hermes.config"] = "lua/hermes/config.lua",
    ["hermes.download"] = "lua/hermes/download.lua",
    ["hermes.health"] = "lua/hermes/health.lua",
    ["hermes.logging"] = "lua/hermes/logging.lua",
    ["hermes.platform"] = "lua/hermes/platform.lua",
    ["hermes.queue"] = "lua/hermes/queue.lua",
    ["hermes.version"] = "lua/hermes/version.lua",
  },
  copy_directories = {
    "plugin",
    "doc"
  }
}
