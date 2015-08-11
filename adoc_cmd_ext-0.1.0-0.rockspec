package = "adoc_cmd_ext"
version = "0.1.0-0"

source = {
   url = "https://github.com/aiq/adoc_cmd_ext/archive/v0.1.0.tar.gz",
   dir = "adoc_cmd_ext-0.1.0"
}

description = {
   summary  = "A library and script to handle AsciiDoc Command language extensions.",
   detailed = [[
      adoc_cmd_ext allows you to work with macro like command extensions in an AsciiDoc file.
      The included script is a preprocessor that only handles the commands in a AsciiDoc file.
   ]],
   license  = "MIT",
   homepage = "https://github.com/aiq/adoc_cmd_ext"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      [ "adoc_cmd_ext.adoc_util" ]         = "lib/adoc_cmd_ext/adoc_util.lua",
      [ "adoc_cmd_ext.apply_cmd_on_adoc" ] = "lib/adoc_cmd_ext/apply_cmd_on_adoc.lua",
      [ "adoc_cmd_ext.cmd_util" ]          = "lib/adoc_cmd_ext/cmd_util.lua",
      [ "adoc_cmd_ext.lpeg_util" ]         = "lib/adoc_cmd_ext/lpeg_util.lua",
      [ "adoc_cmd_ext.pattern" ]           = "lib/adoc_cmd_ext/pattern.lua",
      [ "adoc_cmd_ext.util" ]              = "lib/adoc_cmd_ext/util.lua"
   },
   install = {
      bin = {
         [ "adoc_cmd_ext" ] = "bin/adoc_cmd_ext"
      }
   }
}
