-- ASCEND Kong Plugin - LuaRocks Specification
-- ============================================
--
-- Install with: luarocks install kong-plugin-ascend
--
-- Author: ASCEND Platform Engineering

local plugin_name = "ascend"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "1.0.1"
local rockspec_revision = "1"

package = package_name
version = package_version .. "-" .. rockspec_revision

supported_platforms = {"linux", "macosx"}

-- Binary distribution only.
-- Source is not publicly available.
-- Install via:
--   luarocks install kong-plugin-ascend
source = {
    url = "https://luarocks.org/manifests/securityascend/kong-plugin-ascend-1.0.1-1.all.rock"
}

description = {
    summary = "Kong Gateway plugin for ASCEND AI Agent Governance Platform",
    detailed = [[
        The ASCEND Kong plugin provides real-time AI agent governance at the API gateway layer.

        Features:
        - Zero-code governance integration
        - FAIL SECURE design (blocks on error)
        - Circuit breaker for resilience
        - Decision caching for performance
        - Full audit trail via headers

        Every AI agent action is evaluated against enterprise policies before reaching
        your backend services.
    ]],
    homepage = "https://ascend.owkai.app",
    license = "Proprietary"
}

dependencies = {
    "lua >= 5.1",
    -- Kong and OpenResty dependencies are provided by the runtime
}

build = {
    type = "builtin",
    modules = {
        ["kong.plugins." .. plugin_name .. ".handler"] = "kong/plugins/" .. plugin_name .. "/handler.lua",
        ["kong.plugins." .. plugin_name .. ".schema"] = "kong/plugins/" .. plugin_name .. "/schema.lua",
        ["kong.plugins." .. plugin_name .. ".constants"] = "kong/plugins/" .. plugin_name .. "/constants.lua",
        ["kong.plugins." .. plugin_name .. ".http_client"] = "kong/plugins/" .. plugin_name .. "/http_client.lua",
    }
}
