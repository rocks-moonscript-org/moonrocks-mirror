rockspec_format = '3.0'
package = 'myauth'
version = '1.2.5-0'
source = {
  url = 'git://github.com/myauth-framework/myauth-lua',
  tag = '1.2.5'
}
description = {
  summary = 'LUA library with myauth verification logic',
  detailed = [[
    Requires an nginx build
    with the ngx_lua module.
  ]],
  homepage = 'https://github.com/myauth-framework/myauth-lua',
  license = 'The MIT License (MIT)'
}
dependencies = {
  'base64 >= 1.5',
  'lua-resty-jwt >= 0.2.2',
  'lua-resty-test >= 0.1',
  'luafilesystem >= 1.8.0'
}
build = {
  type = 'builtin',
  modules = {
    ['myauth'] = 'src/myauth.lua',
    ['myauth.claim-str'] = 'src/myauth/claim-str.lua',
    ['myauth.config'] = 'src/myauth/config.lua',
    ['myauth.jwt'] = 'src/myauth/jwt.lua',
    ['myauth.nginx'] = 'src/myauth/nginx.lua',
    ['myauth.scheme-v1'] = 'src/myauth/scheme-v1.lua',
    ['myauth.scheme-v2'] = 'src/myauth/scheme-v2.lua',
    ['myauth.secrets'] = 'src/myauth/secrets.lua',
    ['myauth.empty-event-listener'] = 'src/myauth/empty-event-listener.lua',
    ['myauth.prometheus-event-listener'] = 'src/myauth/prometheus-event-listener.lua',
    ['myauth.url-tools'] = 'src/myauth/url-tools.lua'
  }
}