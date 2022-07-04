package = "cpp-compiler-pretty-output"
version = "1.0-0"
source = {
  url = "git://github.com/jonathanpoelen/cpp-compiler-pretty-output",
  tag = "v1.0.0"
}
description = {
  summary = "Highlight parts of the compiler output.",
  detailed = "Allows you to apply a command or color the expressions displayed in the error, warning and note messages",
  homepage = "https://github.com/jonathanpoelen/cpp-compiler-pretty-output",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "lpeg >= 1.0"
}
build = {
  type = "none",
  install = {
    bin = {
      ["cpp-compiler-pretty-output"] = "cpp-compiler-pretty-output.lua",
    }
  },
}
