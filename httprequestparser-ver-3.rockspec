package = "httprequestparser"
version = "ver-3"
source = {
   url = "git://github.com/yogiverma007/httprequestparser"
}
description = {
  summary = "http request parser written in lua for json, xml.",
  detailed = [[
  httprequestparser is module for parsing http request. Http Parser written entirely in lua. Can get http request data for http request like request payload, headers, Method, URI, Host. If request payload is xml format then get XML object or if request payload is json format then get JSON object by functions provided.
   ]],
   homepage = "https://github.com/yogiverma007/httprequestparser",
   license = "MIT"
}
dependencies = {
      "lua >= 5.1, < 5.4",
      "dkjson",
      "luaxpath",
      "luaexpat"
}
build = {
   type = "builtin",
   modules = {
    httprequestparser = "src/httprequestparser.lua"

}
}