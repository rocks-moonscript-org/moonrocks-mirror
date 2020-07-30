package = "multipart-formdata-lib"
version = "1.0-2"
source = {
   url = "git+https://github.com/lalawue/multipart-formdata-lib",
   tag = "v1.0.2",   
}
description = {
   summary = "HTTP multipart/form-data parser/builder",
   detailed = "HTTP multipart/form-data parser/builder for Lua, with callback style API",
   homepage = "https://github.com/lalawue/multipart-formdata-lib",
   license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
supported_platforms = {
   "macosx", "freebsd", "linux", "windows"
}
build = {
   type = "builtin",
   modules = {
      ["lib.multipart-formdata-parser"] = "lib/multipart-formdata-parser.lua",
      ["lib.multipart-formdata-builder"] = "lib/multipart-formdata-builder.lua",
      ["lib.utils"] = "lib/utils.lua",       
      ["run_test"] = "run_test.lua",
   },
   copy_directories = {
       "testcase"
   } ,   
}
