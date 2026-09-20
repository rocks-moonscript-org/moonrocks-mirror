rockspec_format = "3.0"

package = "shodan"
version = "1.3.1-1"

source = {
    url = "git+https://github.com/hu-matin/shodan-lua.git",
    tag = "v1.3.1",
}

description = {
    summary = "Full-featured Shodan API client for Lua",
    detailed = [[
        A comprehensive, and fast Lua client for the Shodan API.
    ]],
    homepage = "https://github.com/hu-matin/shodan-lua",
    license = "MIT",
    maintainer = "Matin | matinyarzadeh13@gmail.com",
}

dependencies = {
    "lua >= 5.1",
    "dkjson >= 2.1",
    "luatime",
}

build = {
    type = "builtin",
    modules = {
        ["shodan"] = "shodan/init.lua",
        ["shodan.client"] = "shodan/client.lua",
        ["shodan.config"] = "shodan/config.lua",
        ["shodan.errors"] = "shodan/errors.lua",
        ["shodan.utils"] = "shodan/utils.lua",
        ["shodan.version"] = "shodan/version.lua",
        ["shodan.stream"] = "shodan/stream.lua",
        ["shodan.http"] = "shodan/http/init.lua",
        ["shodan.http.curl"] = "shodan/http/curl.lua",
        ["shodan.http.luasocket"] = "shodan/http/luasocket.lua",
        ["shodan.http.lua_http"] = "shodan/http/lua_http.lua",
        ["shodan.api"] = "shodan/api/init.lua",
        ["shodan.api.search"] = "shodan/api/search.lua",
        ["shodan.api.host"] = "shodan/api/host.lua",
        ["shodan.api.exploits"] = "shodan/api/exploits.lua",
        ["shodan.api.dns"] = "shodan/api/dns.lua",
        ["shodan.api.tools"] = "shodan/api/tools.lua",
        ["shodan.api.scan"] = "shodan/api/scan.lua",
        ["shodan.api.alerts"] = "shodan/api/alerts.lua",
        ["shodan.api.data"] = "shodan/api/data.lua",
        ["shodan.api.org"] = "shodan/api/org.lua",
        ["shodan.api.queries"] = "shodan/api/queries.lua",
        ["shodan.api.directory"] = "shodan/api/directory.lua",
        ["shodan.api.stream"] = "shodan/api/stream.lua",
        ["shodan.api.notifiers"] = "shodan/api/notifiers.lua",
        ["shodan.api.account"] = "shodan/api/account.lua",
        ["shodan.api.on_demand"] = "shodan/api/on_demand.lua",
    },
    copy_directories = {
        "tests",
    },
}