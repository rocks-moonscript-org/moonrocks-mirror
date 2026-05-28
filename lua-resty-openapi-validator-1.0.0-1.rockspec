package = "lua-resty-openapi-validator"
version = "1.0.0-1"

source = {
    url = "git+https://github.com/api7/lua-resty-openapi-validator.git",
    tag = "v1.0.0",
}

description = {
    summary = "Pure Lua OpenAPI request validator for OpenResty",
    detailed = [[
        Validates HTTP requests against OpenAPI 3.0 and 3.1 specifications
        using lua-resty-radixtree for path matching and api7/jsonschema for
        schema validation. No Go FFI or external processes required.
    ]],
    homepage = "https://github.com/api7/lua-resty-openapi-validator",
    license = "Apache-2.0",
}

dependencies = {
    "lua >= 5.1",
    "jsonschema",
    "lua-resty-radixtree",
    "lua-cjson",
}

build = {
    type = "builtin",
    modules = {
        ["resty.openapi_validator"]           = "lib/resty/openapi_validator/init.lua",
        ["resty.openapi_validator.loader"]    = "lib/resty/openapi_validator/loader.lua",
        ["resty.openapi_validator.refs"]      = "lib/resty/openapi_validator/refs.lua",
        ["resty.openapi_validator.normalize"] = "lib/resty/openapi_validator/normalize.lua",
        ["resty.openapi_validator.router"]    = "lib/resty/openapi_validator/router.lua",
        ["resty.openapi_validator.params"]    = "lib/resty/openapi_validator/params.lua",
        ["resty.openapi_validator.body"]      = "lib/resty/openapi_validator/body.lua",
        ["resty.openapi_validator.errors"]    = "lib/resty/openapi_validator/errors.lua",
    },
}
