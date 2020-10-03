package = "kong-upstream-jwt-extended"
version = "2.0.0-1"
source = {
   url = "git+https://github.com/andrey-tech/kong-upstream-jwt-extended.git"
}
description = {
   summary = "A plugin for Kong which adds a signed JWT with extended payload to HTTP Headers of outgoing requests",
   detailed = [[API Providers require a means of cryptographically validating that requests they receive were: A. proxied by Kong, and B. not tampered with during transmission from Kong -> API Provider. This token accomplishes both as follows:

  1. **Authentication** & **Authorization** - Provided by means of JWT signature validation. The API Provider will validate the signature on the JWT token (which is generating using Kong's RSA x509 private key), using Kong's public key. This public key can be maintained in a keystore, or sent with the token - provided API providers validate the signature chain against their truststore.
  2. **Non-Repudiation** - SHA256 is used to hash the body of the HTTP request and query string of the НТТР request URL, and the resulting digests are included in the `bodyhash` and `queryhash` elements of the field (claim) `kong` of JWT payload. API Providers will take the SHA256 hashes of the HTTP request body and HTTP request query string, and compare the digests to that found in the JWT payload. If they are identical, the request remained intact during transmission.
     Also information about consumer, credential, route and service may be added to field (claim) `kong` of JWT payload.]],

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
