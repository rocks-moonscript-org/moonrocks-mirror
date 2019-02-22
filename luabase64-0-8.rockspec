package = "LuaBase64"
version = "0-8"

source = {
  url = "git://github.com/ewestbrook/LuaBase64"
  , tag = 'v0.8' }

dependencies = { "lua >= 5.1, < 5.4" }

description = {
  summary = 'Fast, Light Lua Base64 Encoding, Decoding, and Streaming'
  , homepage = "https://github.com/ewestbrook/luab64"
  , license = 'MIT' }

build = {
  type = 'builtin'

  , modules = {

    LuaBase64 = 'src/LuaBase64.lua'

    , ['LuaBase64.c'] = {
      'src/LuaBase64.c'
      , 'src/b64enc.c'
      , 'src/b64dec.c' }}}
