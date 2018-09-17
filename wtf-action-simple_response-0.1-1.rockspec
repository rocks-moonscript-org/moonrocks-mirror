package = "wtf-action-simple_response"
version = "0.1-1"
source = {
   url = "git+https://github.com/honeybot/wtf-action-simple_response",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/wtf-action-simple_response",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.actions.simple_response.handler"] = "wtf/actions/simple_response/handler.lua"
   }
}