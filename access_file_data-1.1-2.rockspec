package = "Access_File_Data"
version = "1.1-2"
source = {
   url = "git+https://github.com/robertlzj/Access_File_Data",
   tag = "",
}
description = {
   summary = "access data from/to lua file.",
   detailed = "access (read/write) table data from/to lua file.",
   homepage = "https://github.com/robertlzj/Access_File_Data",
   license = "GPL-3.0"
}
dependencies = {
   "lua == 5.3",
	 "Data2String >= 1.3",
}
build = {
   type = "builtin",
   modules = {
      Access_File_Data = "Access_File_Data.lua",
   }
}
