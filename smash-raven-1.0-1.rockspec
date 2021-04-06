package = "smash-raven"
 version = "1.0-1"
 source = {
    url = "git://github.com/cloudflare/raven-lua/",
 }
 description = {
    summary = "Lua (openresty) client for Sentry.",
    detailed = [[
       Send sentry events/alerts from open resty app.
    ]],
    homepage = "https://github.com/cloudflare/raven-lua",
    license = "MIT/X11"
 }
 dependencies = {
    "lua >= 5.1",
 }
 build = {
    type = "builtin",
    modules =  {}
 }
