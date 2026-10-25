rockspec_format = "3.0"
package = "lua-resty-privatus"
version = "1.0.0-1"

source = {
  url = "git+https://github.com/Privatus-Analytics/lua.git",
  tag = "v1.0.0",
}

description = {
  summary = "Cookieless Privatus Analytics tracking script for Lua, OpenResty and Lapis.",
  detailed = [[
Prints the Privatus Analytics tracking script tag, event and click map
attributes, and page props. The privatus module is plain Lua 5.1 to 5.4 or
LuaJIT. resty.privatus adds the tag to HTML pages in OpenResty with a header
and body filter. privatus.lapis adds view helpers to Lapis. The script sets
no cookies, and the package never sends anything from your server.
]],
  homepage = "https://privatusanalytics.com",
  issues_url = "https://github.com/Privatus-Analytics/lua/issues",
  license = "MIT",
  maintainer = "Two Phase LLC <james@privatusanalytics.com>",
  labels = { "analytics", "openresty", "nginx", "lapis", "privacy" },
}

dependencies = {
  "lua >= 5.1",
}

test_dependencies = {
  "busted",
}

build = {
  type = "builtin",
  modules = {
    ["privatus"] = "lib/privatus.lua",
    ["privatus.lapis"] = "lib/privatus/lapis.lua",
    ["resty.privatus"] = "lib/resty/privatus.lua",
  },
  copy_directories = {},
}

test = {
  type = "busted",
}
