package = "capsium"
version = "0.4.0-1"

source = {
   url = "git+https://github.com/capsiums/capsium-lua.git"
}

description = {
   summary = "Framework-agnostic Lua library for serving Capsium packages",
   detailed = [[
      Capsium is a framework-agnostic Lua library that provides Package
      manipulation and HTTP serving (Reactor) for Capsium packages (.cap files).

      Features:
      - Package layer for .cap file manipulation (canonical + legacy schemas)
      - SHA-256 integrity verification (security.json, reject on mismatch)
      - RSA-SHA256 digital signature verification (section 6a)
      - Encrypted packages: RSA-OAEP-SHA256 DEK + AES-256-GCM (section 6b)
      - Layered storage with tombstones (section 5a)
      - Composite packages: store resolution + route inheritance (section 4a)
      - Authentication: basicAuth, OAuth2+PKCE, dataset accessControl (4b)
      - Static registry pull: capsium:// mount sources resolved via
        index.json (newest satisfying semver, sha256-verified install)
      - Reactor + per-package introspection: /introspect/status|config|
        metrics and /package/<name>/status|metadata|logs (07-reactor)
      - Manifest-driven route auto-generation
      - Reactor layer for HTTP serving with introspection API
      - Nginx/OpenResty adapter included
      - Multi-package deployment support
      - Flexible routing and configuration
   ]],
   homepage = "https://github.com/capsiums/capsium-lua",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1",
   "luafilesystem >= 1.8.0",
   "lua-cjson >= 2.1.0",
   "lua-zip >= 0.2",
   "lua-resty-openssl >= 1.3",
   "lua-resty-http >= 0.17"
}

build = {
   type = "builtin",
   modules = {
      -- Core utilities
      ["capsium.utils"] = "lib/capsium/utils.lua",
      ["capsium.mime"] = "lib/capsium/mime.lua",
      ["capsium.csv"] = "lib/capsium/csv.lua",
      ["capsium.yaml"] = "lib/capsium/yaml.lua",
      ["capsium.crypto"] = "lib/capsium/crypto.lua",
      ["capsium.semver"] = "lib/capsium/semver.lua",
      ["capsium.registry"] = "lib/capsium/registry.lua",
      ["capsium.log_buffer"] = "lib/capsium/log_buffer.lua",

      -- Reactor core
      ["capsium.reactor"] = "lib/capsium/reactor.lua",

      -- Package layer
      ["capsium.package.package"] = "lib/capsium/package/package.lua",
      ["capsium.package.extractor"] = "lib/capsium/package/extractor.lua",
      ["capsium.package.decrypter"] = "lib/capsium/package/decrypter.lua",
      ["capsium.package.composite"] = "lib/capsium/package/composite.lua",
      ["capsium.package.store"] = "lib/capsium/package/store.lua",
      ["capsium.package.router"] = "lib/capsium/package/router.lua",
      ["capsium.package.security"] = "lib/capsium/package/security.lua",

      -- Authentication (section 4b)
      ["capsium.auth.htpasswd"] = "lib/capsium/auth/htpasswd.lua",
      ["capsium.auth.basic"] = "lib/capsium/auth/basic.lua",
      ["capsium.auth.session"] = "lib/capsium/auth/session.lua",
      ["capsium.auth.oauth2"] = "lib/capsium/auth/oauth2.lua",
      ["capsium.auth.access"] = "lib/capsium/auth/access.lua",

      -- Adapters
      ["capsium.adapters.nginx"] = "lib/capsium/adapters/nginx.lua",
      ["capsium.adapters.hash"] = "lib/capsium/adapters/hash.lua"
   }
}
