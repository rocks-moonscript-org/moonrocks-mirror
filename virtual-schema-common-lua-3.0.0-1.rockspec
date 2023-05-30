rockspec_format = "3.0"

local tag = "3.0.0"

package = "virtual-schema-common-lua"
version = tag .. "-1"

source = {
    url = 'git://github.com/exasol/virtual-schema-common-lua',
    tag = tag
}

description = {
    summary = "Base library for Lua-powered Exasol Virtual Schemas",
    detailed = [[This project contains a base library that abstracts Exasol's Virtual Schema API
    (https://github.com/exasol/virtual-schema-common-java/blob/main/doc/development/api/virtual_schema_api.md)
    and provides a convenient starting point for implementing Lua-based Virtual Schemas.]],
    homepage = "https://github.com/exasol/virtual-schema-common-lua",
    license = "MIT",
    maintainer = 'Exasol <opensource@exasol.com>'
}

dependencies = {
    "lua >= 5.4, < 5.5",
    "exaerror >= 2.0.3",
    "lua-cjson = 2.1.0", -- pinned to prevent "undefined symbol: lua_objlen" in 2.1.0.6 (https://github.com/mpx/lua-cjson/issues/56)
    "remotelog >= 1.1.1"
}

test_dependencies = {
    "busted >= 2.0.0",
    "luacheck >= 0.25.0",
    "luacov >= 0.15.0",
    "luacov-coveralls >= 0.2.3"
}

test = {
    type = "busted"
}

build = {
    type = "builtin",
    modules = {
        ["exasolvs.AdapterProperties"] = "src/exasolvs/AdapterProperties.lua",
        ["exasolvs.AbstractVirtualSchemaAdapter"] = "src/exasolvs/AbstractVirtualSchemaAdapter.lua",
        ["exasolvs.ImportQueryBuilder"] = "src/exasolvs/ImportQueryBuilder.lua",
        ["exasolvs.Query"] = "src/exasolvs/Query.lua",
        ["exasolvs.QueryRenderer"] = "src/exasolvs/QueryRenderer.lua",
        ["exasolvs.queryrenderer.AbstractQueryAppender"] = "src/exasolvs/queryrenderer/AbstractQueryAppender.lua",
        ["exasolvs.queryrenderer.ExpressionAppender"] = "src/exasolvs/queryrenderer/ExpressionAppender.lua",
        ["exasolvs.queryrenderer.ScalarFunctionAppender"] = "src/exasolvs/queryrenderer/ScalarFunctionAppender.lua",
        ["exasolvs.queryrenderer.AggregateFunctionAppender"] = "src/exasolvs/queryrenderer/AggregateFunctionAppender.lua",
        ["exasolvs.queryrenderer.SelectAppender"] = "src/exasolvs/queryrenderer/SelectAppender.lua",
        ["exasolvs.queryrenderer.ImportAppender"] = "src/exasolvs/queryrenderer/ImportAppender.lua",
        ["exasolvs.RequestDispatcher"] = "src/exasolvs/RequestDispatcher.lua",
        ["text"] = "src/text.lua"
    },
    copy_directories = { "doc"}
}