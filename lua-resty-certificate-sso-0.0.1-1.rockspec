package = "lua-resty-certificate-sso"
version = "0.0.1-1"
source = {
  url = "git://github.com/sidoh/lua-resty-certificate-sso",
  tag = "v0.0.1"
}
description = {
  summary = "A library and recipe for enabling client certificate-based SSO using OpenResty",
  detailed = [[
    Makes it possible for an OpenResty install to use client certificates for auth.  Using
    this pattern, a single nginx virtual host will serve as an SSO endpoing.  Any other
    virtual hosts wishing to use the endpoint can simply include a snippet, which will
    handle redirection to the SSO endpoint.  A JWT token will be issued, which will be
    used for authentication.
  ]],
  homepage = "https://github.com/sidoh/lua-resty-certificate-sso",
  license = "MIT" 
}
dependencies = {
  "lua >= 5.1, < 5.4",
  "lua-resty-http",
  "lua-resty-jwt",
  "net-url >= 0.9-1"
}
build = {
  type = "builtin",
  modules = {
    ["resty.certificate-sso"] = "../lib/resty/certificate-sso.lua"
  }
}
