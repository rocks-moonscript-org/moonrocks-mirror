package = "kong-upstream-jwt-extended"
version = "2.1.2-1"
source = {
   url = "git+https://github.com/andrey-tech/kong-upstream-jwt-extended.git"
}
description = {
   summary = "A plugin for Kong which adds a signed JWT with extended payload to HTTP Headers of outgoing requests",

   detailed = [[API Providers require a means of cryptographically validating that requests they receive were: A. proxied by Kong, and B. not tampered with during transmission from Kong -> API Provider. This token accomplishes both as follows:

  1. **Authentication** & **Authorization** - Provided by means of JWT signature validation. The API Provider will validate the signature on the JWT token (which is generated using Kong's RSA private key), using Kong's X.509 public key certificate. This X.509 public key certificate can be maintained in a keystore, or sent with the token in the field `x5c` - provided API providers validate the signature chain against their truststore.

  2. **Non-Repudiation** - SHA256 is used to hash the body of the HTTP request and query string of the НТТР request URL. The resulting digests are included in the `bodyhash` and `queryhash` elements of the field `kong` of JWT payload. API Providers will take the SHA256 hashes of the HTTP request body and HTTP request URL query string to compare the digests to that found in the JWT payload. If they are identical, the request remaines intact during transmission. Also, information about consumer, credentials, route, service and request can be added to field `kong` of JWT payload.

  This plugin is a fork of kong-upstream-jwt package and extends its features.]],

   homepage = "https://github.com/andrey-tech/kong-upstream-jwt-extended",
   license = "Apache 2.0"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-upstream-jwt-extended.access"] = "src/access.lua",
      ["kong.plugins.kong-upstream-jwt-extended.handler"] = "src/handler.lua",
      ["kong.plugins.kong-upstream-jwt-extended.schema"]= "src/schema.lua"
   }
}
