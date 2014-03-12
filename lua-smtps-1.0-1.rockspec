package = "lua-smtps"
version = "1.0-1"

source = {
   url = "https://github.com/slushpupie/lua-smtps/archive/release-1.0.tar.gz",
   dir = "lua-smtps-release-1.0",
}

description = {
   summary    = "an implementation of SMTPS for Lua",
   detailed   = [[
This is an implementation of SMTPS for Lua. 
The smtps module extends the socket.smtp module, so all documentation for the 
socket.smtp module apply here.  The default port is changed to 465, and the send
function also accepts any of the parameters that the ssl.wrap params accepts.
   ]],
   homepage   = "https://github.com/slushpupie/lua-smtps",
   license    = "MIT",
}

dependencies = {
   "lua >= 5.1, < 5.3",
   "luasocket",
   "luasec",
}

build = {
   type = "builtin",
   modules = {
      ["smtps"] = "smtps.lua",
   },
}
