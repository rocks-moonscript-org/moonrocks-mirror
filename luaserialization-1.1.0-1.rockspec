rockspec_format = "3.0"
package = "luaserialization"
version = "1.1.0-1"
description = {
  summary = "The library that implements various auxiliary functions for serialization.",
  license = "MIT",
  maintainer = "thewizardplusplus <thewizardplusplus@yandex.ru>",
  homepage = "https://github.com/thewizardplusplus/luaserialization",
}
source = {
  url = "git+https://github.com/thewizardplusplus/luaserialization.git",
  tag = "v1.1.0",
}
dependencies = {
  "lua >= 5.1",
  "luatypechecks >= 1.3.3, < 2.0",
  "inspect >= 3.1.3, < 4.0",
  "compat53 >= 0.13, < 1.0",
  "net-url >= 1.1, < 2.0",
}
test_dependencies = {
  "luaunit >= 3.4, < 4.0",
  "middleclass >= 4.1.1, < 5.0",
}
build = {
  type = "builtin",
  modules = {
    ["luaserialization.data"] = "data.lua",
    ["luaserialization.data_test"] = "data_test.lua",
    ["luaserialization.string"] = "string.lua",
    ["luaserialization.string_test"] = "string_test.lua",
    ["luaserialization.stringifiable"] = "stringifiable.lua",
    ["luaserialization.stringifiable_test"] = "stringifiable_test.lua",
    ["luaserialization.json"] = "json.lua",
    ["luaserialization.json_test"] = "json_test.lua",
    ["luaserialization.vendor.json"] = "vendor/json.lua",
    ["luaserialization.vendor.jsonschema"] = "vendor/jsonschema/init.lua",
    ["luaserialization.vendor.jsonschema.store"] = "vendor/jsonschema/store.lua",
  },
  copy_directories = {
    "doc",
  },
}
