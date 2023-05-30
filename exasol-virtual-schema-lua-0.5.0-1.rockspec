rockspec_format = "3.0"

local tag = "0.5.0"
local project = "exasol-virtual-schema-lua"
local src = "src/main/lua"

package = project
version = tag .. "-1"

source = {
    url = "git://github.com/exasol/" .. project,
    tag = tag
}

description = {
    summary = "Lua-based Virtual Schema for Exasol databases",
    detailed = [[This project adds a Virtual Schema (a concept closely related to a database view) on top of an existing
    Exasol database schema and makes it read-only.]],
    homepage = "https://github.com/exasol/" .. project,
    license = "MIT",
    maintainer = 'Exasol <opensource@exasol.com>'
}

dependencies = {
    "virtual-schema-common-lua = 3.0.0",
    "luasql-exasol = 0.2.0"
}

build_dependencies = {
    "amalg"
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

local package_items = {
    "exasol.validator",
    "exasolvs.adapter_capabilities", "exasolvs.ExasolAdapterProperties", "exasolvs.ExasolAdapter",
    "exasolvs.MetadataReaderFactory", "exasolvs.AbstractMetadataReader", "exasolvs.LocalMetadataReader",
    "exasolvs.RemoteMetadataReader", "exasolvs.ConnectionReader", "exasolvs.QueryRewriterFactory",
    "exasolvs.AbstractQueryRewriter", "exasolvs.LocalQueryRewriter", "exasolvs.RemoteQueryRewriter",
    "remotelog", "ExaError", "MessageExpander",
    -- from virtual-schema-common-lua"
    "exasolvs.AbstractVirtualSchemaAdapter", "exasolvs.AdapterProperties",
    "exasolvs.RequestDispatcher", "exasolvs.Query", "exasolvs.QueryRenderer",
    "exasolvs.queryrenderer.AbstractQueryAppender", "exasolvs.queryrenderer.ExpressionAppender",
    "exasolvs.queryrenderer.ImportAppender",
    "exasolvs.queryrenderer.ScalarFunctionAppender", "exasolvs.queryrenderer.AggregateFunctionAppender",
    "exasolvs.queryrenderer.SelectAppender", "exasolvs.ImportQueryBuilder",
    "text",
    -- driver dependencies
    "luasql.exasol", "luasql.exasol.Connection", "luasql.exasol.ConnectionProperties", "luasql.exasol.Cursor",
    "luasql.exasol.CursorData", "luasql.exasol.Environment", "luasql.exasol.ExasolWebsocket", "luasql.exasol.Websocket",
    "luasql.exasol.WebsocketDatahandler", "luasql.exasol.base64", "luasql.exasol.constants", "luasql.exasol.luws",
    "luasql.exasol.util"
}

local item_path_list = ""
for i = 1, #package_items do
    item_path_list = item_path_list .. " " .. package_items[i]
end

build = {
    type = "command",
    build_command = "mkdir -p target"
            .. " && cd " .. src
            .. " && amalg.lua "
            .. "-o ../../../target/exasol-virtual-schema-dist-" .. tag .. ".lua "
            .. "-s entry.lua"
            .. item_path_list
}