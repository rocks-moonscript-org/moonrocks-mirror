package = "lua-step"
version = "v1.0-1"

source = {
   url = "git://github.com/lipp/lua-step.git",     
   tag = "v1.0"
}

description = {
  summary = "Un-nest asynchronous control flow.",
  homepage = "http://github.com/lipp/lua-step",
  license = "MIT/X11",
  detailed = "Un-nest asynchronous control flow.",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = 'none',
  install = {
    lua = {
      ['step'] = 'src/step.lua',
    }
  }
}

