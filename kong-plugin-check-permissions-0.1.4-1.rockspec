package = "kong-plugin-check-permissions"
version = "0.1.4-1"
source = {
    url = "https://github.com/LeonelM99/kong-plugin-check-permissions.git"
}
dependencies = {
    "kong >= 0.14.0",
    "lua ~> 5.1"
}

build = {
    type = "none"
}

description = {
  summary = "A Kong plugin to check for specific permission claims in headers and allow certain methods",
  license = "MIT"
}

