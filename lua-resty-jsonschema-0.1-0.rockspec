package = "lua-resty-jsonschema"
version = "0.1-0"
supported_platforms = {"linux", "macosx"}

source = {
   url = "git://github.com/iresty/lua-resty-jsonschema",
   tag = "v0.1",
}

description = {
   summary = "JSON Schema validator for OpenResty",
   homepage = "https://github.com/iresty/lua-resty-jsonschema",
   license = "Apache License 2.0",
   maintainer = "Yuansheng Wang <membphis@gmail.com>"
}

dependencies = {
}

build = {
   type = "builtin",
   modules = {
      ["resty.jsonschema"] = "lib/resty/jsonschema.lua"
   }
}
