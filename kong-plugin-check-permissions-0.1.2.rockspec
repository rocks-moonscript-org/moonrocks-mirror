package = "kong-plugin-check-permissions"
version = "0.1.2"
source = {
    url = "https://github.com/LeonelM99/kong-plugin-check-permissions.git"
}
dependencies = {
    "kong >= 0.14.0"
}

build = {
    type = "none"
}

lua_version = "5.1"

description = [[
    A Kong plugin to check for specific permission claims in headers and allow certain methods
]]

documentation = [[
    See the README file for usage instructions and examples.
]]
