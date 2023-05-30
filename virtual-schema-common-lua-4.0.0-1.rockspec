rockspec_format = "3.0"

local tag = "4.0.0"

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
    "luacov-coveralls >= 0.2.3",
    "ldoc >= 1.4.6-2"
}

test = {
    type = "busted"
}

build = {
    type = "builtin",
    modules = {
        ["exasol.vscl.AdapterProperties"] = "src/exasol/vscl/AdapterProperties.lua",
        ["exasol.vscl.AbstractVirtualSchemaAdapter"] = "src/exasol/vscl/AbstractVirtualSchemaAdapter.lua",
        ["exasol.vscl.ImportQueryBuilder"] = "src/exasol/vscl/ImportQueryBuilder.lua",
        ["exasol.vscl.Query"] = "src/exasol/vscl/Query.lua",
        ["exasol.vscl.QueryRenderer"] = "src/exasol/vscl/QueryRenderer.lua",
        ["exasol.vscl.queryrenderer.AbstractQueryAppender"] = "src/exasol/vscl/queryrenderer/AbstractQueryAppender.lua",
        ["exasol.vscl.queryrenderer.ExpressionAppender"] = "src/exasol/vscl/queryrenderer/ExpressionAppender.lua",
        ["exasol.vscl.queryrenderer.ScalarFunctionAppender"] = "src/exasol/vscl/queryrenderer/ScalarFunctionAppender.lua",
        ["exasol.vscl.queryrenderer.AggregateFunctionAppender"] = "src/exasol/vscl/queryrenderer/AggregateFunctionAppender.lua",
        ["exasol.vscl.queryrenderer.SelectAppender"] = "src/exasol/vscl/queryrenderer/SelectAppender.lua",
        ["exasol.vscl.queryrenderer.ImportAppender"] = "src/exasol/vscl/queryrenderer/ImportAppender.lua",
        ["exasol.vscl.RequestDispatcher"] = "src/exasol/vscl/RequestDispatcher.lua",
        ["exasol.vscl.text"] = "src/exasol/vscl/text.lua",
        ["exasol.vscl.validator"] = "src/exasol/vscl/validator.lua"
    },
    copy_directories = { "doc"}
}