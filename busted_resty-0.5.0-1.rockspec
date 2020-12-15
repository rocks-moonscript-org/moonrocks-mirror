package = "busted_resty"
version = "0.5.0-1"
source = {
   url = "git://github.com/Triple-Z/busted_resty",
   tag = "v0.5.0"
}
description = {
   summary = "An extra mocking layer for OpenResty in busted testing environment.",
   detailed = [[
      This module mocks the following OpenResty APIs:

      - ngx.status
      - ngx.exit
      - ngx.exec
      - ngx.redirect
      - ngx.send_headers
      - ngx.headers_sent
      - ngx.print
      - ngx.say
      - ngx.flush
      - ngx.eof
      - ngx.is_subrequest
      - ngx.on_abort
      - ngx.arg.*
      - ngx.var.*
      - ngx.header.*
      - ngx.location.*
      - ngx.req.*
      - ngx.resp.*
   ]],
   homepage = "https://github.com/Triple-Z/busted_resty",
   license = "MIT"
}
dependencies = {
   'lua >= 5.1',
   'luassert >= 1.7.8',
}
build = {
   type = "builtin",
   modules = {
      busted_resty = "src/busted_resty.lua"
   }
}
