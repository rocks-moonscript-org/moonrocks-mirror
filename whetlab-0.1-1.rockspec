package = "whetlab"
version = "0.1-1"
source = {
   url = "git://github.com/whetlab/Whetlab-Lua-Client"
}
description = {
   summary = "The lua client to Whetlab",
   detailed = [[
      This is a client that provides an easy to use
      lua wrapper to the Whetlab REST api at Whetlab.com.
   ]],
   homepage = "http://www.whetlab.com",
   license = "4-clause BSD"
}
dependencies = {
   "lua >= 5.1",
   "luasec >= 0.5",
   "luasocket >= 3.0rc1-1",
   "luajson >= 1.3"
}
build = {
   type = "builtin",
   modules = {

      whetlab = "whetlab.lua",

      ["api.whetlab_api.whetlab_api_client"]      = "api/whetlab_api/whetlab_api_client.lua",
      ["api.whetlab_api.api.Result"]              = "api/whetlab_api/api/Result.lua",
      ["api.whetlab_api.api.Results"]             = "api/whetlab_api/api/Results.lua",
      ["api.whetlab_api.api.Setting"]             = "api/whetlab_api/api/Setting.lua",
      ["api.whetlab_api.api.Settings"]            = "api/whetlab_api/api/Settings.lua",
      ["api.whetlab_api.api.Suggest"]             = "api/whetlab_api/api/Suggest.lua",
      ["api.whetlab_api.api.Experiment"]          = "api/whetlab_api/api/Experiment.lua",
      ["api.whetlab_api.api.Experiments"]         = "api/whetlab_api/api/Experiments.lua",
      ["api.whetlab_api.http_client.http_client"] = "api/whetlab_api/http_client/http_client.lua"
   }
}