package = "tensorflow-lua"
version = "0.16.0-1"
source = {
  url = "git+https://github.com/numeric-lua/tensorflow-lua.git",
  tag = "v0.16.0",
}
description = {
  summary = "Native LuaJIT bindings for the TensorFlow C API",
  detailed = [[
    GraphDef/SavedModel execution, graph construction, gradients, variables,
    Adam and gradient-descent updates, and TensorFlow checkpoints for LuaJIT.
    Requires a local libtensorflow installation; see the project README.
  ]],
  homepage = "https://github.com/numeric-lua/tensorflow-lua",
  license = "BSD-3-Clause",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    tensorflow = "tensorflow/init.lua",
    ["tensorflow.capi"] = "tensorflow/capi.lua",
    ["tensorflow.tensor"] = "tensorflow/tensor.lua",
    ["tensorflow.graph"] = "tensorflow/graph.lua",
    ["tensorflow.graph_builder"] = "tensorflow/graph_builder.lua",
    ["tensorflow.session"] = "tensorflow/session.lua",
    ["tensorflow.protobuf"] = "tensorflow/protobuf.lua",
    ["tensorflow.train"] = "tensorflow/train.lua",
    ["tensorflow.checkpoint"] = "tensorflow/checkpoint.lua",
    ["tensorflow.checkpoint_reader"] = "tensorflow/checkpoint_reader.lua",
    ["tensorflow.ops"] = "tensorflow/ops.lua",
    ["tensorflow.eager"] = "tensorflow/eager.lua",
    ["tensorflow.layers"] = "tensorflow/layers.lua",
    ["tensorflow.losses"] = "tensorflow/losses.lua",
    ["tensorflow.metrics"] = "tensorflow/metrics.lua",
    ["tensorflow.model"] = "tensorflow/model.lua",
    ["tensorflow.functional"] = "tensorflow/functional.lua",
    ["tensorflow.schedules"] = "tensorflow/schedules.lua",
    ["tensorflow.callbacks"] = "tensorflow/callbacks.lua",
    ["tensorflow.saver"] = "tensorflow/saver.lua",
    ["tensorflow.data"] = "tensorflow/data.lua",
    ["tensorflow.serialize"] = "tensorflow/serialize.lua",
  },
}
