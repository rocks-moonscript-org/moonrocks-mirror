package = "wtf-action-html_response"
version = "0.1-1"
source = {
   url = "https://github.com/honeybot/wtf-action-html_response",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/wtf-action-html_response",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["wtf.actions.html_response"] = "wtf/actions/html_response.lua"
   }
}
