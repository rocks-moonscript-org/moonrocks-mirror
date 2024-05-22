package = "MathParser"
version = "1.0-2"
source = {
  url = "https://github.com/ByteXenon/MathParser.lua/releases/download/v1.0.2/MathParser.min.lua",
  tag = "v1.0-2"
}
description = {
  summary = "A math parser written in Lua.", -- replace with your project summary
  detailed = "This is a detailed description of the math parser.", -- replace with your project description
  homepage = "http://github.com/ByteXenon/MathParser.lua", -- replace with your project homepage
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["MathParser"] = "MathParser.min.lua"
  }
}