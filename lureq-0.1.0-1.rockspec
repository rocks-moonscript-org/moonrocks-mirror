package = "lureq"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/valhalla803/lureq.git",
   tag = "v0.1.0"
}

description = {
   summary = "A simple, elegant HTTP client library for Lua inspired by Python's requests",
   detailed = [[
      lureq provides a high-level, developer-friendly interface for sending HTTP/HTTPS 
      requests in Lua. Features include automated JSON encoding/decoding, multipart/form-data 
      file uploads, persistent session cookies, redirect handling, and case-insensitive headers.
   ]],
   homepage = "https://github.com/valhalla803/lureq",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1",
   "luasocket",
   "luasec"
}

build = {
   type = "builtin",
   modules = {
      ["lureq"] = "lureq/init.lua",
      ["lureq.url"] = "lureq/url.lua",
      ["lureq.headers"] = "lureq/headers.lua",
      ["lureq.response"] = "lureq/response.lua",
      ["lureq.session"] = "lureq/session.lua",
      ["lureq.multipart"] = "lureq/multipart.lua"
   }
}
