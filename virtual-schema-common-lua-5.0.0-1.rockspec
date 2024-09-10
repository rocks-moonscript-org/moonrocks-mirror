---@diagnostic disable: lowercase-global
rockspec_format = "3.0"

local tag = "5.0.0"

package = "virtual-schema-common-lua"
version = tag .. "-1"

source = {
    url = 'git://github.com/exasol/virtual-schema-common-lua', -- 
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

-- LuaFormatter off
dependencies = {
    "lua >= 5.4, < 5.5",
    "exaerror >= 2.0.3",
    "lua-cjson = 2.1.0", -- pinned to prevent "undefined symbol: lua_objlen" in 2.1.0.6 (https://github.com/mpx/lua-cjson/issues/56)
    "remotelog >= 1.1.1"
}

test_dependencies = {
    "busted >= 2.2.0",
    "luacheck >= 1.2.0",
    "luacov >= 0.15.0",
    "luacov-coveralls >= 0.2.3"
}
-- LuaFormatter on

test = {type = "busted"}

---@param module_name string module name, e.g. `exasol.vscl.AdapterProperties`
---@return string file_path e.g. `src/exasol/vscl/AdapterProperties.lua`
local function file_path(module_name)
    return "src/" .. module_name:gsub("%.", "/") .. ".lua"
end

---@param module_names string[] module name, e.g. `exasol.vscl.AdapterProperties`
---@return table<string, string> modules mapping from module name to file path
local function build_modules(module_names)
    local modules = {}
    for i = 1, #module_names do -- ipairs() and pairs() are not supported in rockspec
        local module_name = module_names[i]
        modules[module_name] = file_path(module_name)
    end
    return modules
end

build = {
    type = "builtin",

    -- LuaFormatter off
    modules = build_modules({
        "exasol.vscl.AdapterProperties",
        "exasol.vscl.AbstractVirtualSchemaAdapter",
        "exasol.vscl.ImportQueryBuilder",
        "exasol.vscl.Query",
        "exasol.vscl.QueryRenderer",
        "exasol.vscl.queryrenderer.AbstractQueryAppender",
        "exasol.vscl.queryrenderer.ExpressionAppender",
        "exasol.vscl.queryrenderer.ScalarFunctionAppender",
        "exasol.vscl.queryrenderer.AggregateFunctionAppender",
        "exasol.vscl.queryrenderer.SelectAppender",
        "exasol.vscl.queryrenderer.ImportAppender",
        "exasol.vscl.RequestDispatcher",
        "exasol.vscl.text",
        "exasol.vscl.validator",
        -- LuaLS type definitions
        "exasol.vscl.types.udf_context",
        "exasol.vscl.types.expression",
        "exasol.vscl.types.type_definition",
        "exasol.vscl.types.statement",
        "exasol.vscl.types.vs_request",
        "exasol.vscl.types.vs_response"
    }),
    -- LuaFormatter on

    copy_directories = {"doc"}
}
