build = {
  build_variables = {
    CFLAGS = "$(CFLAGS)",
    INST_LUADIR = "$(LUADIR)",
    INST_PREFIX = "$(PREFIX)",
    LUA = "$(LUA)"
  },
  install_variables = {
    INST_LUADIR = "$(LUADIR)",
    INST_PREFIX = "$(PREFIX)",
    LUA = "$(LUA)"
  },
  type = "make"
}
dependencies = {
  "lua >= 5.1"
}
description = {
  detailed = "The fastest odd-checking module around. Nothing can compete. This is simply the best module. It's so cool. It tells you all about odd numbers, like whether the number is odd or not (there isn't much more to odd numbers). Optimized to hell and back. Integrates with web services. A true challenged to the homonym npm module. Just install it. Come on. Install it. Now. Do it.\n",
  homepage = "https://github.com/daelvn/isodd",
  license = "SUPER LICENSED!!!!! DO NOT STEAL",
  summary = "The latest scientific breakthroughs in the field of odd numbers."
}
package = "isodd"
rockspec_format = "3.0"
source = {
  url = "git://github.com/daelvn/isodd.git"
}
version = "1.0-1"
