rockspec_format = "3.0"
package = "versionlens-redux"
version = "0.4.1-1"

description = {
  summary = "VersionLens dependency diagnostics and code lenses for Neovim",
  detailed = [[VersionLens Redux starts the shared versionlens-lsp server and renders dependency diagnostics and code lenses in supported manifests.]],
  homepage = "https://github.com/xsyetopz/versionlens-redux",
  license = "ISC",
  labels = { "neovim", "lsp", "dependencies" },
}

dependencies = {
  "lua >= 5.1",
}

source = {
  url = "https://github.com/xsyetopz/versionlens-redux/archive/refs/tags/v0.4.1.tar.gz",
  dir = "versionlens-redux-0.4.1/packages/neovim-plugin",
}

build = {
  type = "builtin",
  modules = {
    ["versionlens"] = "lua/versionlens/init.lua",
    ["versionlens.config"] = "lua/versionlens/config.lua",
    ["versionlens.health"] = "lua/versionlens/health.lua",
    ["versionlens.support"] = "lua/versionlens/support.lua",
    ["versionlens.version"] = "lua/versionlens/version.lua",
  },
  copy_directories = { "doc", "plugin" },
}
