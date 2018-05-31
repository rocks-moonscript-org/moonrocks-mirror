package = "moonhtml"
version = "1.0.1-1"
source = {
  tag = 'v1.0.1';
  url = "git://github.com/DarkWiiPlayer/moonhtml.git"
}
description = {
   homepage = "https://github.com/DarkWiiPlayer/moonhtml";
   license = "Unlicense";
}
dependencies = {
  "lua >= 5.1";
}
build = {
   type = "builtin",
   modules = {
     moonhtml = 'html.lua'
   }
}
