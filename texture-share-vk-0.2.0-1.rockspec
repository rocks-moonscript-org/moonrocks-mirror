package = "texture-share-vk"
version = "0.2.0-1"

source = {
  url = "git+https://git.s-ol.nu/lua-texture-share-vk.git",
  tag = "v0.2.0",
}

description = {
  summary = "A LÖVE library for sharing GPU textures between processes",
  detailed = [[
    This wraps the OpenGL C API of https://github.com/DigitOtter/texture-share-vk
    and allows publishing a LÖVE Canvas object.
  ]],
  homepage = "https://git.s-ol.nu/lua-texture-share-vk/-/",
  license = "MIT",
}

dependencies = {
  -- requires luajit FFI
  "lua == 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["texture-share-vk"] = "texture-share-vk.lua",
  }
}
