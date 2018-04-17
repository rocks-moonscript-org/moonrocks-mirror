package = "uulua"
version = "1.0-1"
source = {
  url = "git://github.com/DarkWiiPlayer/uulua";
  tag = "v1.0"
}
description = {
  summary = "Generate UUIDs in plain lua.";
  detailed = [[
    Generate UUIDs in plain lua.
  ]];
  homepage = "https://github.com/DarkWiiPlayer/uulua";
  license = "Unlicense";
}
dependencies = {
  "lua >= 5.1";
}
build = {
  type = "builtin";
  modules = {
    uulua = "src/main.lua"
  };
}
