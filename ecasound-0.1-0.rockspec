package = "ecasound"
version = "0.1-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/ecasound-0.1.tar.gz",
   md5 = "f5f233f82d93b6f7e11dad8ada49fca9"
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
   "lua >= 5.1, <5.4"
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
