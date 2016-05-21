package = "turbo-fetch"
version = "0.1-1"

source = {
 url = "git://github.com/olueiro/turbo-fetch.git",
}

description = {
 summary = "Turbo.lua callback-compatible alternative for turbo.async.HTTPClient():fetch",
 detailed = [[
Turbo.lua callback-compatible alternative for turbo.async.HTTPClient():fetch
]],
 homepage = "https://github.com/olueiro/turbo-fetch",
 license = "MIT"
}

dependencies = {
 "turbo"
}

build = {
 type = "builtin",
 modules = {
  ["turbo-fetch"] = "turbo-fetch.lua"
 },
 copy_directories = {}
}
