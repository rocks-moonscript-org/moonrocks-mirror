rockspec_format = "3.0"
package = "unirate-api"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/UniRate-API/unirate-api-lua.git",
  tag = "v0.1.0",
}

description = {
  summary = "Official Lua client for the UniRate API — free currency exchange rates, historical data, and VAT rates.",
  detailed = [[
    Lua client for the UniRate API (https://unirateapi.com): real-time and
    historical currency exchange rates, currency conversion, and VAT rates.
    The HTTP layer is injectable so tests run fully offline; JSON decoding uses
    the pure-Lua dkjson.
  ]],
  homepage = "https://github.com/UniRate-API/unirate-api-lua",
  license = "MIT",
  labels = { "unirate", "exchange-rates", "currency", "forex", "vat", "fintech" },
}

dependencies = {
  "lua >= 5.1",
  "dkjson >= 2.5",
  "luasocket >= 3.0rc1",
  "luasec >= 1.0",
}

test_dependencies = {
  "busted >= 2.0",
}

test = {
  type = "busted",
}

build = {
  type = "builtin",
  modules = {
    ["unirate"] = "src/unirate/init.lua",
    ["unirate.errors"] = "src/unirate/errors.lua",
    ["unirate.http"] = "src/unirate/http.lua",
  },
  copy_directories = { "examples" },
}
