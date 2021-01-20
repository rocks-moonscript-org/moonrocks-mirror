rockspec_format = '3.0'
package = 'myauth'
version = '1.0.0-0'
source = {
  url = 'git://github.com/ozzy-ext-myauth/myauth-lua',
  tag = '1.0.0'
}
description = {
  summary = 'Provides authorization for nginx based on config',
  detailed = [[
    Requires an nginx build
    with the ngx_lua module.
  ]],
  homepage = 'https://github.com/ozzy-ext-myauth/proxy',
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
  }
}