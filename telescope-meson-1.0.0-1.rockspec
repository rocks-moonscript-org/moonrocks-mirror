rockspec_format = "3.0"

package = "telescope-meson"
version = "1.0.0-1"
source = {
  url = "https://github.com/NEOLabs-software/telescope-meson.nvim/archive/refs/tags/1.0.0.tar.gz",
  md5 = "1f4a75348855d8fcc93307f76318ede8",  -- Replace with actual md5sum
}

description = {
  summary = "Telescope extension for Meson build system",
  detailed = "A Neovim Telescope extension for Meson build system, providing commands like meson compile, test, etc.",
  homepage = "https://github.com/NEOLabs-software/telescope-meson.nvim",
  license = "GPL",
}

dependencies = {
  "nvim-telescope/telescope.nvim"
}

build = {
  type = "builtin",
  modules = {
    telescope_meson = "lua/telescope-meson/meson_picker.lua",
    telescope_meson_ext = "lua/telescope/_extensions/meson.lua"
  }
}
