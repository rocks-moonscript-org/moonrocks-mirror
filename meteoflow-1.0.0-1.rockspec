package = "meteoflow"
version = "1.0.0-1"

source = {
    url = "git+https://github.com/meteoflow/lua.git",
    tag = "1.0.1",
}

description = {
    summary = "Lua SDK for Meteoflow Weather API",
    detailed = [[
        Meteoflow is a Lua SDK for the Meteoflow Weather API.
        It provides a simple interface to get current weather and
        forecast data (hourly, 3-hourly, and daily) for any location.
    ]],
    homepage = "https://github.com/meteoflow/lua",
    license = "MIT",
    maintainer = "MeteoFlow Team",
}


dependencies = {
    "lua >= 5.1",
    "luasocket",
    "luasec",
    "lua-cjson",
}

build = {
    type = "builtin",
    modules = {
        ["meteoflow"] = "meteoflow/init.lua",
        ["meteoflow.client"] = "meteoflow/client.lua",
        ["meteoflow.errors"] = "meteoflow/errors.lua",
        ["meteoflow.http"] = "meteoflow/http.lua",
        ["meteoflow.location"] = "meteoflow/location.lua",
        ["meteoflow.options"] = "meteoflow/options.lua",
        ["meteoflow.version"] = "meteoflow/version.lua",
    },
}
