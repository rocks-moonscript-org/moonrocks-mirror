-- SPDX-FileCopyrightText: 2020 Henri Chain <henri.chain@enioka.com>
--
-- SPDX-License-Identifier: Apache-2.0

package = "kong-plugin-upstream-oauth2-3ready"

version = "1.3.3-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "upstream-oauth2-3ready"
supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/aliostad/kong-plugin-upstream-oauth2",
  tag = "master",
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
    ["kong.plugins.upstream-oauth2-3ready.handler"] = "src/handler.lua",
    ["kong.plugins.upstream-oauth2-3ready.schema"]  = "src/schema.lua",
    ["kong.plugins.upstream-oauth2-3ready.tokens"]  = "src/tokens.lua",
  }
}
