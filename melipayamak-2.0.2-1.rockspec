rockspec_format = "3.0"

package = "melipayamak"
version = "2.0.2-1"

source = {
    url = "git+https://github.com/Melipayamak/melipayamak-Lua.git",
    tag = "v2"
}

description = {
    summary = "MeliPayamak Web Service Wrapper for Lua",
    detailed = "MeliPayamak REST and SOAP API wrapper with synchronous and asynchronous support.",
    homepage = "https://github.com/Melipayamak/melipayamak-Lua",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1, < 5.4",
    "luasocket >= 3.0",
    "copas >= 2.0.2"
}

build = {
    type = "builtin",
    modules = {
        ["Melipayamak"] = "Melipayamak.lua",
        ["SoapBuilder"] = "SoapBuilder.lua",
        ["SoapClient"] = "SoapClient.lua",
        ["SoapClientAsync"] = "SoapClientAsync.lua",
        ["RestClient"] = "RestClient.lua",
        ["RestClientAsync"] = "RestClientAsync.lua"
    }
}