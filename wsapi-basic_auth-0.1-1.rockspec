package = "WSAPI-Basic_Auth"
version = "0.1-1"

source = {
   url = "git://github.com/keplerproject/wsapi_basic_auth.git",
   tag = "v0.1",
}

description = {
  summary =  "HTTP Basic Authentication for WSAPI",

  detailed = [[
     A module implemented HTTP basic access authentication for WSAPI.
     This provides a run() function that wraps around the run() function
     for your WSAPI handler.
  ]],
  license = "MIT/X11",
}

dependencies = {
   "wsapi",
   "lbase64",
}

build = {
   type = "builtin",
   modules = {
      ["wsapi.basic_auth"] = "wsapi/basic_auth.lua",
   },
}
