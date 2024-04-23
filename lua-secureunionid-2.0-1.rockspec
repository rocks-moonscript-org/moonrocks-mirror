rockspec_format = "3.0"
package = "lua-secureunionid"
version = "2.0-1"
source = {
   url = "git://github.com/ChuanDou2021/lua-secureunionid",
   tag = "v2.0"
}
description = {
   summary = "Secure ECC-based DID intersection",
   detailed = [[
      Provide Secure ECC-based DID intersection for Lua.
      The details of this project can be found in [SecureUnionID](https://github.com/volcengine/SecureUnionID)
   ]],
   homepage = "https://github.com/ChuanDou2021/lua-secureunionid",
   license = "Apache-2.0 license"
}
build = {
   type = "builtin",
   modules = {
      libsecureunionid = {
         incdirs = {
            "src/crypto",
            "src/psi",
            "src/"
         },
         sources = {
            "src/crypto/big_256_56.c",
            "src/crypto/ecp2_BN254.c",
            "src/crypto/ecp_BN254.c",
            "src/crypto/fn_BN254.c",
            "src/crypto/fp12_BN254.c",
            "src/crypto/fp2_BN254.c",
            "src/crypto/fp4_BN254.c",
            "src/crypto/fp_BN254.c",
            "src/crypto/hash.c",
            "src/crypto/hkdf.c",
            "src/crypto/oct.c",
            "src/crypto/pair_BN254.c",
            "src/crypto/rand.c",
            "src/crypto/randapi.c",
            "src/crypto/rom_curve_BN254.c",
            "src/crypto/rom_field_BN254.c",
            "src/crypto/rom_order_BN254.c",
            "src/psi/encryption.c",
            "src/utils.c"
         }
      }
   },
   install = {
      lua = {
         secureunionid = "lib/secureunionid.lua"
      }
   }
}
test = {
   type = "command",
   command = "bash runtests.sh"
}
