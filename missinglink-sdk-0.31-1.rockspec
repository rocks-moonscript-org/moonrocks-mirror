package = "missinglink-sdk"
version = "0.31-1"
source = {
   url = "https://storage.googleapis.com/missinglinkai/luarocks/missinglink-sdk-0.31.tar.gz"
}
description = {
   summary = "SDK for streaming realtime metrics to https://missinglink.ai",
   homepage = "https://missinglink.ai",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "luajson >= 1.3.3",
   "httpclient >= 0.1"
}
build = {
   type = "builtin",
   modules = {
      missinglink = "missinglink/init.lua",
      ["missinglink.callback.base_callback"] = "missinglink/callback/base_callback.lua",
      ["missinglink.callback.callback_wrap"] = "missinglink/callback/callback_wrap.lua",
      ["missinglink.callback.dispatchers.missinglink"] = "missinglink/callback/dispatchers/missinglink.lua",
      ["missinglink.callback.torch_dp_callback"] = "missinglink/callback/torch_dp_callback.lua",
      ["missinglink.callback.torch_reporter"] = "missinglink/callback/torch_reporter.lua",
      ["missinglink.callback.torch_sg_callback"] = "missinglink/callback/torch_sg_callback.lua",
      ["missinglink.callback.torchnet_callback"] = "missinglink/callback/torchnet_callback.lua",
   },
   install = {
      lua = {
         ["missinglink.cacert"] = "missinglink/cacert.pem"
      }
   }
}