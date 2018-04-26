package = "moonhtml"
version = "1.0.0-1"
source = {
   url = "git://github.com/DarkWiiPlayer/moonhtml.git";
   tag = 'v1.0';
}
description = {
   homepage = "https://github.com/DarkWiiPlayer/moonhtml";
   license = "Unlicense";
}
dependencies = {
  "lua >= 5.3";
}
build = {
   type = "builtin",
   modules = {
     moonhtml = 'html.lua'
   }
}
