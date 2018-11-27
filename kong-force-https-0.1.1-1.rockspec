package = "kong-force-https"
version = "0.1.1-1"

source = {
   url = "https://git.rouing.me/kong/force-https/-/jobs/71/artifacts/raw/kong-force-https-0.1.1-1.tar.gz"
}

description = {
    summary = "Force HTTPS redirect for Kong API Gateway",
    homepage = "https://git.rouing.me/kong/force-https/",
    license = "MIT"
}

dependencies = {
}

build = {
    type = "builtin",
    modules = {
      ["kong.plugins.http-to-https.handler"] = "src/handler.lua",
      ["kong.plugins.http-to-https.schema"] = "src/schema.lua",
    }
}
