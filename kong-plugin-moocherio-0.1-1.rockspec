package = "kong-plugin-moocherio"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/moocherio/kong-plugin-moocherio",
  tag = "v0.1-1"
}
description = {
  summary = "Moocher.IO reputation and anti-abuse filter Plugin",
  license = "Apache 2.0",
  homepage = "https://github.com/moocherio/kong-plugin-moocherio",
  detailed = [[
      Moocher.io is a set of lists like IP, domains, emails, passwords, creditcard BIN/IIN,, some of them marked as 'abusers' by several groups and initiatives of users and communities, and others used to filter out potential abusers. Moocher.io can be defined as a Look up as a Service for developers and product companies that want to know in realtime if their existing or potential users have been classified as 'abusers' by one or more of these lists.
  ]],
}
dependencies = {
  "lua ~> 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.moocherio.handler"] = "src/handler.lua",
    ["kong.plugins.moocherio.schema"] = "src/schema.lua"
  }
}
