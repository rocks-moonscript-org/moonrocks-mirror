package = "MicrosoftSAPI"
version = "1.1.0-1"
source = {
  url = "git://github.com/fiendish/ms_speech_api_lua",
  tag = "v1.1.0"
}
description = {
  summary = "Lua COM interface for Microsoft Speech API",
  detailed = [[
    LuaSAPI provides a simple and intuitive interface for doing
    text-to-speech operations using the Microsoft Speech API in
    Windows or WINE with Lua.
      
    Using it can be as easy as:
    
      sapi = require "sapi_interface"
      sapi.say("SAPI interface is ready")
      sapi.speech_demo()
        
    Documentation is in the source repository README file in GitHub Flavored Markdown.
  ]],
  homepage = "https://github.com/fiendish/ms_speech_api_lua",
  license = "GPL-3"
}
dependencies = {
  "lua >= 5.1",
  "luacom"
}
build = {
  type = "none",
  install = {
    lua = {
      ["sapi_interface"] = "sapi_interface.lua",
    }
  },
}
