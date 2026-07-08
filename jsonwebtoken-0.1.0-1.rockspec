rockspec_format = "3.0"
package = "jsonwebtoken"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/Ludi-Framework/jsonwebtoken.git",
   tag = "v0.1.0"
}

description = {
   summary = "JSON Web Tokens (HS256/384/512) in pure Lua, zero dependencies",
   detailed = [[
      Sign, verify and decode JWTs (RFC 7519) with a three-function
      API. HMAC algorithms only — HS256, HS384 and HS512 — with the
      SHA-2, base64url and JSON codecs built in, so nothing else needs
      to be installed. Verification pins the algorithm to the caller's
      choice (never the token header), compares signatures in constant
      time, rejects alg=none, and validates exp/nbf with optional
      leeway plus iss/aud/sub on request.
   ]],
   homepage = "https://github.com/Ludi-Framework/jsonwebtoken",
   license = "MIT"
}

dependencies = {
   "lua >= 5.3"
}

test_dependencies = {
   "busted"
}

test = {
   type = "busted"
}

build = {
   type = "builtin",
   modules = {
      ["jsonwebtoken"] = "jsonwebtoken/init.lua",
      ["jsonwebtoken.sha2"] = "jsonwebtoken/sha2.lua",
      ["jsonwebtoken.base64url"] = "jsonwebtoken/base64url.lua",
      ["jsonwebtoken.json"] = "jsonwebtoken/json.lua"
   }
}
