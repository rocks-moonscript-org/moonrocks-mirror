package = "MarcusLuaTest"
version = "1.0-1"
source = {
   url = "file:///Users/marcus/Developer/bundlelab-test-packages/marcusluatest-1.0.tar.gz" 
}

description = {
   summary = "An example package",
   detailed = [[
   		This is an detailed summary of the example package
   ]],
   homepage = "http://example.com",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1, < 5.4"
}

build = {
   type = "builtin",
   modules = {
   apricot = "src/apricot.lua"
   }
}
