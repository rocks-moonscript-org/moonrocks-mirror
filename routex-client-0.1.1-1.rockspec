local package_name = "routex-client"
local package_version = "0.1.1"
local rockspec_revision = "1"
local github_account_name = "yaxitech"
local github_repo_name = "routex-client-lua"

rockspec_format = "3.0"
package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
  url = "git+https://github.com/" .. github_account_name .. "/" .. github_repo_name .. ".git"
}
if package_version == "scm" then
  source.branch = "main"
else
  source.tag = "v" .. package_version
end

description = {
  summary = "Pure Lua client for YAXI's Open Banking services",
  detailed = "Pure Lua client with no external dependencies. Bring your own HTTP client by implementing IHttpClient, or install the 'http' rock to use the bundled DefaultHttpClient.",
  homepage = "https://yaxi.tech",
  license = "MIT"
}
dependencies = {
  "lua >= 5.3",
}
build = {
  type = "builtin",
  modules = {
    ["routex-client.attestation.init"] = "routex-client/attestation/init.lua",
    ["routex-client.attestation.report"] = "routex-client/attestation/report.lua",
    ["routex-client.attestation.vcek"] = "routex-client/attestation/vcek.lua",
    ["routex-client.attestation.x509"] = "routex-client/attestation/x509.lua",
    ["routex-client.crypto.blake2b_512"] = "routex-client/crypto/blake2b_512.lua",
    ["routex-client.crypto.chacha_box_ietf"] = "routex-client/crypto/chacha_box_ietf.lua",
    ["routex-client.crypto.hkdf"] = "routex-client/crypto/hkdf.lua",
    ["routex-client.crypto.random"] = "routex-client/crypto/random.lua",
    ["routex-client.crypto.x25519"] = "routex-client/crypto/x25519.lua",
    ["routex-client.errors"] = "routex-client/errors.lua",
    ["routex-client.http"] = "routex-client/http.lua",
    ["routex-client.init"] = "routex-client/init.lua",
    ["routex-client.jwt"] = "routex-client/jwt.lua",
    ["routex-client.logging"] = "routex-client/logging.lua",
    ["routex-client.result-types"] = "routex-client/result-types.lua",
    ["routex-client.settlement"] = "routex-client/settlement.lua",
    ["routex-client.util.base64"] = "routex-client/util/base64.lua",
    ["routex-client.util.date"] = "routex-client/util/date.lua",
    ["routex-client.util.init"] = "routex-client/util/init.lua",
    ["routex-client.util.uuid"] = "routex-client/util/uuid.lua",
    ["routex-client.vendor.json.init"] = "routex-client/vendor/json/json.lua",
    ["routex-client.vendor.logging.console"] = "routex-client/vendor/logging/console.lua",
    ["routex-client.vendor.logging.init"] = "routex-client/vendor/logging/init.lua",
    ["routex-client.vendor.plc.base64"] = "routex-client/vendor/plc/base64.lua",
    ["routex-client.vendor.plc.blake2b"] = "routex-client/vendor/plc/blake2b.lua",
    ["routex-client.vendor.tls13.asn"] = "routex-client/vendor/tls13/asn.lua",
    ["routex-client.vendor.tls13.asn.bitstring"] = "routex-client/vendor/tls13/asn/bitstring.lua",
    ["routex-client.vendor.tls13.asn.encode"] = "routex-client/vendor/tls13/asn/encode.lua",
    ["routex-client.vendor.tls13.asn.oid"] = "routex-client/vendor/tls13/asn/oid.lua",
    ["routex-client.vendor.tls13.base64"] = "routex-client/vendor/tls13/base64.lua",
    ["routex-client.vendor.tls13.buffer"] = "routex-client/vendor/tls13/buffer.lua",
    ["routex-client.vendor.tls13.crypto.cipher.aes"] = "routex-client/vendor/tls13/crypto/cipher/aes.lua",
    ["routex-client.vendor.tls13.crypto.cipher.chacha20-poly1305"] = "routex-client/vendor/tls13/crypto/cipher/chacha20-poly1305.lua",
    ["routex-client.vendor.tls13.crypto.cipher.mode.gcm"] = "routex-client/vendor/tls13/crypto/cipher/mode/gcm.lua",
    ["routex-client.vendor.tls13.crypto.curve25519"] = "routex-client/vendor/tls13/crypto/curve25519.lua",
    ["routex-client.vendor.tls13.crypto.curve25519.constants"] = "routex-client/vendor/tls13/crypto/curve25519/constants.lua",
    ["routex-client.vendor.tls13.crypto.hash.sha2"] = "routex-client/vendor/tls13/crypto/hash/sha2.lua",
    ["routex-client.vendor.tls13.crypto.hkdf"] = "routex-client/vendor/tls13/crypto/hkdf.lua",
    ["routex-client.vendor.tls13.crypto.hmac"] = "routex-client/vendor/tls13/crypto/hmac.lua",
    ["routex-client.vendor.tls13.crypto.montgomery"] = "routex-client/vendor/tls13/crypto/montgomery.lua",
    ["routex-client.vendor.tls13.crypto.rsa"] = "routex-client/vendor/tls13/crypto/rsa.lua",
    ["routex-client.vendor.tls13.crypto.secp384r1"] = "routex-client/vendor/tls13/crypto/secp384r1.lua",
    ["routex-client.vendor.tls13.error"] = "routex-client/vendor/tls13/error.lua",
    ["routex-client.vendor.tls13.group"] = "routex-client/vendor/tls13/group.lua",
    ["routex-client.vendor.tls13.handshake"] = "routex-client/vendor/tls13/handshake.lua",
    ["routex-client.vendor.tls13.init"] = "routex-client/vendor/tls13/init.lua",
    ["routex-client.vendor.tls13.io"] = "routex-client/vendor/tls13/io.lua",
    ["routex-client.vendor.tls13.oc"] = "routex-client/vendor/tls13/oc.lua",
    ["routex-client.vendor.tls13.oc.group"] = "routex-client/vendor/tls13/oc/group.lua",
    ["routex-client.vendor.tls13.oc.io"] = "routex-client/vendor/tls13/oc/io.lua",
    ["routex-client.vendor.tls13.oc.rng"] = "routex-client/vendor/tls13/oc/rng.lua",
    ["routex-client.vendor.tls13.oc.sigalg"] = "routex-client/vendor/tls13/oc/sigalg.lua",
    ["routex-client.vendor.tls13.record"] = "routex-client/vendor/tls13/record.lua",
    ["routex-client.vendor.tls13.sigalg"] = "routex-client/vendor/tls13/sigalg.lua",
    ["routex-client.vendor.tls13.util"] = "routex-client/vendor/tls13/util.lua",
    ["routex-client.vendor.tls13.util.buffer"] = "routex-client/vendor/tls13/util/buffer.lua",
    ["routex-client.vendor.tls13.util.map"] = "routex-client/vendor/tls13/util/map.lua",
    ["routex-client.vendor.tls13.x509"] = "routex-client/vendor/tls13/x509.lua",
    ["routex-client.vendor.tls13.x509.alg"] = "routex-client/vendor/tls13/x509/alg.lua",
    ["routex-client.vendor.tls13.x509.attr"] = "routex-client/vendor/tls13/x509/attr.lua",
    ["routex-client.vendor.tls13.x509.ext"] = "routex-client/vendor/tls13/x509/ext.lua",
  },
  copy_directories = {
    "tests"
  }
}
test_dependencies = {
  "busted",
  "http",
}
test = {
  type = "busted"
}
