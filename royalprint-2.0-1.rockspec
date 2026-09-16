package = "royalprint"
version = "2.0-1"

source = {
   url = "git+https://github.com/codebabel-appbag/royalprint_lua.git",
   tag = "v2.0"
}

description = {
   summary = "royalprint luarocks, easy to use.",
   detailed = [[
      royalprint is perfect for simplifying the information that needs to go to the console,
      similar to printing in C++ command cout, PHP echo, log("Hi"), go("Hello mdf"),
      cout("whoami?"), puts("She Knows").. and more..

      Read the documentation on the homepage link.
   ]],
   homepage = "https://github.com/codebabel-appbag/royalprint_lua",
   license = "MIT",
   maintainer = "codebabel <codebabel.mint@gmail.com>"
}

dependencies = {
   "lua >= 5.1, < 5.5"
}

build = {
   type = "builtin",
   modules = {
      royalprint = "royalprint.lua"
   }
}