package = "ecasound"
version = "0.3-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/ecasound-0.3.tar.gz",
   md5 = "030783463294f70144bca0c45d4f5a32"
}
description = {
   summary = "Provides access to the ecasound interactive mode",
   detailed = [[
See 'man ecasound iam' and the Audio::Ecasound Perl CPAN module
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/ecasound.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, <5.4",
   "luaposix >= 31",
}
external_dependencies = {
   ECAS = {
      header  = "libecasoundc/ecasoundc.h",
      library = "ecasoundc",
   }
}
build = {
   type = "builtin",
   modules = {
      ["ecasound"] = "ecasound.lua",
      ["C-ecasound"] = {
         sources   = { "C-ecasound.c" },
         incdirs   = { "$(ECAS_INCDIR)" },
         libdirs   = { "$(ECAS_LIBDIR)" },
         libraries = { "ecasoundc" },
      }
   },
   copy_directories = { "doc", "test" }
}
