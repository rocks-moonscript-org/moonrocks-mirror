package = "aistemsplitter"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/aistemsplitter/aistemsplitter-lua.git",
  tag = "v0.1.0",
}
description = {
  summary = "Official Lua SDK for the AIStemSplitter public API.",
  detailed = "AIStemSplitter separates vocals, drums, bass, and instruments from uploaded audio files or direct audio URLs.",
  homepage = "https://aistemsplitter.org",
  license = "MIT",
}
dependencies = {
  "lua >= 5.1",
  "dkjson >= 2.8",
  "luasocket >= 3.1",
  "luasec >= 1.3",
}
build = {
  type = "builtin",
  modules = {
    aistemsplitter = "src/aistemsplitter.lua",
  },
}
