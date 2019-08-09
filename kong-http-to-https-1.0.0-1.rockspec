package = "kong-http-to-https"
version = "1.0.0-1"

source = {
    url = "git://github.com/ingresse/kong-plugin-http-to-https",
    tag = "1.1.0"
}

description = {
    summary = "Kong plugin to redirect HTTP requests to HTTPS",
    homepage = "https://github.com/ingresse/kong-plugin-http-to-https",
    license = "MIT"
}

dependencies = {
}

build = {
    type = "builtin",
    modules = {
      ["kong.plugins.http-to-https.handler"] = "kong/plugins/http-to-https/handler.lua",
      ["kong.plugins.http-to-https.schema"] = "kong/plugins/http-to-https/schema.lua",
    }
}
