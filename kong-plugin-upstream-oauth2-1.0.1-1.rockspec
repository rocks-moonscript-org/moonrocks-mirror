-- SPDX-FileCopyrightText: 2020 Henri Chain <henri.chain@enioka.com>
--
-- SPDX-License-Identifier: Apache-2.0

package = "kong-plugin-upstream-oauth2"

version = "1.0.1-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "upstream-oauth2"
supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/enioka/kong-plugin-upstream-oauth2",
  tag = "1.0.1",
}
description = {
  summary = "A Kong plugin to negotiate oauth2 authentication with upstream services",
  license = "Apache 2.0"
}
dependencies = {
  "lua ~> 5"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.upstream-oauth2.handler"] = "src/handler.lua",
    ["kong.plugins.upstream-oauth2.schema"]  = "src/schema.lua",
    ["kong.plugins.upstream-oauth2.tokens"]  = "src/tokens.lua",
  }
}
