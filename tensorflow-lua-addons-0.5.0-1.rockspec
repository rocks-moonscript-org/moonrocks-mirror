package = "tensorflow-lua-addons"
version = "0.5.0-1"

source = {
  url = "git+https://github.com/numeric-lua/tensorflow-lua-addons.git",
  tag = "v0.5.0",
}

description = {
  summary = "TensorFlow Addons for LuaJIT",
  detailed = [[
    Activations, losses, metrics, normalization layers, LAMB, and callbacks
    built on tensorflow-lua. Requires a local libtensorflow installation.
  ]],
  homepage = "https://github.com/numeric-lua/tensorflow-lua-addons",
  license = "BSD-3-Clause",
}

dependencies = {
  "lua >= 5.1",
  "tensorflow-lua >= 0.8",
}

build = {
  type = "builtin",
  modules = {
    tensorflow_addons = "tensorflow_addons/init.lua",
    ["tensorflow_addons.activations"] = "tensorflow_addons/activations.lua",
    ["tensorflow_addons.losses"] = "tensorflow_addons/losses.lua",
    ["tensorflow_addons.metrics"] = "tensorflow_addons/metrics.lua",
    ["tensorflow_addons.layers"] = "tensorflow_addons/layers.lua",
    ["tensorflow_addons.callbacks"] = "tensorflow_addons/callbacks.lua",
    ["tensorflow_addons.optimizers"] = "tensorflow_addons/optimizers.lua",
    ["tensorflow_addons.ops"] = "tensorflow_addons/ops.lua",
  },
}
