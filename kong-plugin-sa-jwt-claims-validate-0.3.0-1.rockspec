package = "kong-plugin-sa-jwt-claims-validate"  -- TODO: rename, must match the info in the filename of this rockspec!
                                  -- as a convention; stick to the prefix: `kong-plugin-`
version = "0.3.0-1"               -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '0.3.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `plugins` setting.
-- Here we extract it from the package name.
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "sa-jwt-claims-validate"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/Voronenko/kong-plugin-sa-jwt-claims-validate",
  tag = "0.3.0"
}

description = {
  summary = "kong-plugin-sa-jwt-claims-validate is a plugin for kong v2 family, that helps to validate JWT token contents before accessing your API",
  homepage = "https://github.com/Voronenko/kong-plugin-sa-jwt-claims-validate",
  license = "MIT",
  detailed = [[
      Plugin functionality:

      supposed to work in combination with kong's built-in jwt plugin.
      Built-in plugin is responsible for validation of the jwt token signature and validity/expiration claims.

      This plugin - exposes plugin claims to upstream services via headers,
      additionally it can be used as a security filter to enforce presence of
      specified claims and checking they are matching expected values.

      ## (A) expose jwt token info to upstream services

      For incoming token (location configurable)
      ```
      Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6IlF6bEZOak5CUmtZNVJqY3lOVVpCUmpJMU5qRkJOMFl4T0VNMVJFSXhNelU0TVVJeU5qa3dSUSJ9.eyJpc3MiOiJodHRwczovL3Zvcm9uZW5rby5hdXRoMC5jb20vIiwic3ViIjoiUjQ3N3pkMGRoRDBIcTNDbk5JRWdFNjc3bndib1lENXVAY2xpZW50cyIsImF1ZCI6Imh0dHBzOi8vaW1wbGljaXRncmFudC5hdXRoMC52b3JvbmVua28ubmV0IiwiaWF0IjoxNTc1NTgzNTM2LCJleHAiOjE1NzU2Njk5MzYsImF6cCI6IlI0Nzd6ZDBkaEQwSHEzQ25OSUVnRTY3N253Ym9ZRDV1IiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIn0.aIx7LnT7aFPxmK4wCXxxGhEKrxPsGlZ3azEFykynkf6hfyb-4zCXlrqvxNjB9pk_PO8MxmKRJeoRsHLmNOvVls3tE90GQNa6DrqyWuO5PxZetkPyR56o5axt4PddZlop-mukiMYrZF2bP_gdRBZnhR2OJ4vU3qG6Rvs2k-J65tbb2oUERWps7KDC2FeTbV2bc09JtH25StNfYyHOPUR1MiDSKZbZqH3Z0bZUFHN1Ac7jznU3xUV8yEPTy7hQwOWUK5CxUSvd_s4RlTLKsHdAQWWxoDPRvxldwPXtxc7n13hwQPslJNR1ScbREcgJo4zPOcVM_uzTk1ygczLJCzvdsA
      ```

      which is equivalent of jwt token

      header
      ```
      {
        "typ": "JWT",
        "alg": "RS256",
        "kid": "QzlFNjNBRkY5RjcyNUZBRjI1NjFBN0YxOEM1REIxMzU4MUIyNjkwRQ"
      }
      ```

      payload
      ```
      {
        "iss": "https://voronenko.auth0.com/",
        "sub": "R477zd0dhD0Hq3CnNIEgE677nwboYD5u@clients",
        "aud": "https://implicitgrant.auth0.voronenko.net",
        "iat": 1575583536,
        "exp": 1575669936,
        "azp": "R477zd0dhD0Hq3CnNIEgE677nwboYD5u",
        "gty": "client-credentials"
      }
      ```


      it will expose following headers to upstream service:

      ```
      "x-sa-jwt-claim-gty":"client-credentials",
      "x-sa-jwt-claim-exp":"1575669936",
      "x-sa-jwt-claim-azp":"R477zd0dhD0Hq3CnNIEgE677nwboYD5u"
      "x-sa-jwt-claim-iat":"1575583536"
      "x-sa-jwt-token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6IlF6bEZOak5CUmtZNVJqY3lOVVpCUmpJMU5qRkJOMFl4T0VNMVJFSXhNelU0TVVJeU5qa3dSUSJ9.eyJpc3MiOiJodHRwczovL3Zvcm9uZW5rby5hdXRoMC5jb20vIiwic3ViIjoiUjQ3N3pkMGRoRDBIcTNDbk5JRWdFNjc3bndib1lENXVAY2xpZW50cyIsImF1ZCI6Imh0dHBzOi8vaW1wbGljaXRncmFudC5hdXRoMC52b3JvbmVua28ubmV0IiwiaWF0IjoxNTc1NTgzNTM2LCJleHAiOjE1NzU2Njk5MzYsImF6cCI6IlI0Nzd6ZDBkaEQwSHEzQ25OSUVnRTY3N253Ym9ZRDV1IiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIn0.aIx7LnT7aFPxmK4wCXxxGhEKrxPsGlZ3azEFykynkf6hfyb-4zCXlrqvxNjB9pk_PO8MxmKRJeoRsHLmNOvVls3tE90GQNa6DrqyWuO5PxZetkPyR56o5axt4PddZlop-mukiMYrZF2bP_gdRBZnhR2OJ4vU3qG6Rvs2k-J65tbb2oUERWps7KDC2FeTbV2bc09JtH25StNfYyHOPUR1MiDSKZbZqH3Z0bZUFHN1Ac7jznU3xUV8yEPTy7hQwOWUK5CxUSvd_s4RlTLKsHdAQWWxoDPRvxldwPXtxc7n13hwQPslJNR1ScbREcgJo4zPOcVM_uzTk1ygczLJCzvdsA"
      "x-sa-jwt-claim-iss":"https:\/\/voronenko.auth0.com\/"
      "x-sa-jwt-claim-sub":"R477zd0dhD0Hq3CnNIEgE677nwboYD5u@clients"
      "x-sa-jwt-claim-aud":"https:\/\/implicitgrant.auth0.voronenko.net"}
      ```


      ## (B) validate jwt token claims before passing info to upstream services


      ```
      ### Activate sa-jwt-claims-validate plugin for service

      curl -X POST \
          --url {{kong}}/services/{{ m2mservice_name }}/plugins/ \
          -d '{
            "name": "jwt-claims-validate",
            "config": {
              "claims": {
                  "iss": "https://voronenko.auth0.com/",
                  "aud": "https://implicitgrant.auth0.voronenko.net"
              }
            }
          }'
      ```

  ]],
}

dependencies = {
  "lua >= 5.1",
  "lua-cjson"
}

build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional files that the plugin consists of
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
