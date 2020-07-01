package = "nextgenlua"
version = "1.0-1"
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
      ["nextgenlua.main"] =  "src/charter_security_lib.lua",
      ["nextgenlua.base64"] =  "src/base64.lua",
      ["nextgenlua.basexx"] =  "src/basexx.lua",
      ["nextgenlua.dkjson"] =  "src/dkjson.lua",
      ["nextgenlua.json"] =  "src/json.lua",
      ["nextgenlua.jwe"] =  "src/jwe.lua",
      ["nextgenlua.jwks2pem"] =  "src/jwks2pem.lua",
      ["nextgenlua.jws"] =  "src/jws.lua",
      ["nextgenlua.jwt"] =  "src/jwt.lua",
      ["nextgenlua.kjwt"] =  "src/kjwt.lua",
      ["nextgenlua.luaosslutils"] =  "src/luaosslutils.lua",
      ["nextgenlua.plain"] =  "src/plain.lua",
      ["nextgenlua.uuid"] =  "src/uuid.lua",
      ["nextgenlua.yaml"] =  "src/yaml.lua",
   }
}
