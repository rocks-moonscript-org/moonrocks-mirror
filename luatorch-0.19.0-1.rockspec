package = "luatorch"
version = "0.19.0-1"

source = {
  url = "git+https://github.com/numeric-lua/luatorch.git",
  tag = "v0.19.0",
}

description = {
  summary = "LuaJIT tensor engine with an ATen backend and fusion compiler",
  detailed = [[
    Tensors, autograd, nn/optim, data loading, and a tracing fusion compiler
    for LuaJIT. The native libluatorch.so shim must be built separately against
    libtorch; set LUATORCH_LIB or install it next to torch/lib.lua.
  ]],
  homepage = "https://github.com/numeric-lua/luatorch",
  license = "BSD-3-Clause",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["fun"] = "lua/fun.lua",
    ["torch.fuse"] = "lua/torch/fuse.lua",
    ["torch.fusec"] = "lua/torch/fusec.lua",
    ["torch"] = "lua/torch/init.lua",
    ["torch.lib"] = "lua/torch/lib.lua",
    ["torch.nn.basic"] = "lua/torch/nn/basic.lua",
    ["torch.nn.conv"] = "lua/torch/nn/conv.lua",
    ["torch.nn.dropout"] = "lua/torch/nn/dropout.lua",
    ["torch.nn.embedding"] = "lua/torch/nn/embedding.lua",
    ["torch.nn.functional"] = "lua/torch/nn/functional.lua",
    ["torch.nn"] = "lua/torch/nn/init.lua",
    ["torch.nn.loss"] = "lua/torch/nn/loss.lua",
    ["torch.nn.module"] = "lua/torch/nn/module.lua",
    ["torch.nn.normalization"] = "lua/torch/nn/normalization.lua",
    ["torch.nn.pooling"] = "lua/torch/nn/pooling.lua",
    ["torch.nn.rnn"] = "lua/torch/nn/rnn.lua",
    ["torch.nn.safetensors"] = "lua/torch/nn/safetensors.lua",
    ["torch.nn.serialization"] = "lua/torch/nn/serialization.lua",
    ["torch.optim.adagrad"] = "lua/torch/optim/adagrad.lua",
    ["torch.optim.adam"] = "lua/torch/optim/adam.lua",
    ["torch.optim.adamw"] = "lua/torch/optim/adamw.lua",
    ["torch.optim.clip"] = "lua/torch/optim/clip.lua",
    ["torch.optim"] = "lua/torch/optim/init.lua",
    ["torch.optim.lr_scheduler"] = "lua/torch/optim/lr_scheduler.lua",
    ["torch.optim.optimizer"] = "lua/torch/optim/optimizer.lua",
    ["torch.optim.rmsprop"] = "lua/torch/optim/rmsprop.lua",
    ["torch.optim.sgd"] = "lua/torch/optim/sgd.lua",
    ["torch.profiler"] = "lua/torch/profiler.lua",
    ["torch.tensor"] = "lua/torch/tensor.lua",
    ["torch.utils.data"] = "lua/torch/utils/data.lua",
    ["torch.utils"] = "lua/torch/utils/init.lua",
  },
}
