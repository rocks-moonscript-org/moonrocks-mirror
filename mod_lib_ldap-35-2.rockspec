package = "mod_lib_ldap"
version = "35-2"
source = {
   url = "https://hg.prosody.im/prosody-modules/archive/66b3085ecc49.tar.gz/mod_lib_ldap",
   dir = "Community-Modules-66b3085ecc49/mod_lib_ldap",
   file = "prosody-modules-66b3085ecc49.tar.gz"
}
description = {
   summary = "Add LDAP plugin suite",
   homepage = "https://modules.prosody.im/mod_lib_ldap.html",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ldap = "ldap.lib.lua"
   }
}
