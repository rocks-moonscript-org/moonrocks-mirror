package = "nextgenlua"
version = "1.0-2"
source = {
    url = "nextgenlua-1.0.tar.gz"
}
description = {
   summary = "A custom Lua library.",
   detailed = [[
       A custom Lua library curated for the specific requirements.
   ]],
   homepage = "*** please enter a project homepage ***",
   license = "MIT" -- or whatever you like
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      nextgenlua = { 
         "src/base64.lua",
         "src/basexx.lua",
         "src/dkjson.lua",
         "src/json.lua",
         "src/jwe.lua",
         "src/jwks2pem.lua",
         "src/jws.lua",
         "src/jwt.lua",
         "src/kjwt.lua",
         "src/luaosslutils.lua",
         "src/plain.lua",
         "src/uuid.lua",
         "src/yaml.lua",
         "src/charter_security_lib.lua"
      }   
   }
}
