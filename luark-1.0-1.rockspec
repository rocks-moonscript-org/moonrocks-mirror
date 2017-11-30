package = "Luark"
version = "1.0-1"
source = {
   url = "git+https://github.com/Highjhacker/LuArk.git"
}
description = {
   summary = "Ark API Wrapper in Lua",
   detailed = "API Wrapper written for the Ark Ecosystem.",
   homepage = "https://github.com/Highjhacker/LuArk",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "busted >= 2.0.rc12-1",
   "lua-requests >= 1.1-1",
   "middleclass >= 4.1-0"
}
build = {
   type = "builtin",
   modules = {
      account = "account.lua",
      api = "api.lua",
      block = "block.lua",
      delegate = "delegate.lua",
      json = "json.lua",
      loader = "loader.lua",
      main = "main.lua",
      multisignature = "multisignature.lua",
      peer = "peer.lua",
      signature = "signature.lua",
      ["spec.account_spec"] = "spec/account_spec.lua",
      ["spec.block_spec"] = "spec/block_spec.lua",
      ["spec.delegate_spec"] = "spec/delegate_spec.lua",
      ["spec.loader_spec"] = "spec/loader_spec.lua",
      ["spec.multisignature_spec"] = "spec/multisignature_spec.lua",
      ["spec.peer_spec"] = "spec/peer_spec.lua",
      ["spec.signature_spec"] = "spec/signature_spec.lua",
      ["spec.transaction_spec"] = "spec/transaction_spec.lua",
      ["spec.transport_spec"] = "spec/transport_spec.lua",
      transaction = "transaction.lua",
      transport = "transport.lua",
      utils = "utils.lua"
   }
}
