package = 'validate-args'
version = '1.0.1-1'
source = {
  url = "https://bitbucket.org/djerius/validate.args/downloads/validate-args-1.0.1.tar.gz"
}

description = {
   summary = "Function argument validation",
   detailed = [[
	 validate.args provides validation of function arguments
	 by type, value, and user provided validation functions.
         it can handle named and positional arguments.
   ]],

   license = "GPL-3",

}

dependencies = {
   "lua >= 5.1"
}

build = {

   type = "builtin",

   modules = {
      ["validate.args"] = "validate/args.lua",
   },

   copy_directories = {
   "doc", "tests"
   }

}
