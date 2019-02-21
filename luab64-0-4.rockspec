package = "luab64"
version = "0-4"

source = {
  url = "git://github.com/ewestbrook/luab64"
  , tag = 'v0.4' }

dependencies = { "lua >= 5.1, < 5.4" }

description = {
  summary = 'Fast and Light Base64 Encoding, Decoding, and LTN12 filtering for Lua'
  , homepage = "https://github.com/ewestbrook/luab64"
  , license = 'MIT' }

build = {
  type = 'builtin'

  , modules = {

    luab64 = 'src/luab64.lua'

    , ['luab64.c'] = {
      'src/luab64.c'
      , 'src/b64enc.c'
      , 'src/b64dec.c' }}}
