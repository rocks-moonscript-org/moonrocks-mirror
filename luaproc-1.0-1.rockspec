package = "luaproc"

version = "1.0-1"

source = {
  url = "git://github.com/askyrme/luaproc.git",
  tag = "1.0-1"
}

description = {
  summary = "luaproc concurrency programming library for Lua.",
  detailed = [[
    This is the luaproc concurrency programming library for Lua. It
    implements the concept of Lua processes, or independent execution flows
    of Lua code. Lua processes can only communicate by means of message
    passing using communication channels. Workers (pthreads) handle the
    execution of the Lua processes and provide support for true hardware
    parallelism.
  ]],
  homepage = "http://askyrme.github.io/luaproc", 
  license = "MIT/X11" 
}

dependencies = {
  "lua ~> 5.1"
}

external_dependencies = {
  PTHREADS = {
    header = "pthread.h",
    library = "pthread"
  }
}

build = {
  type = "builtin",
  modules = {
    luaproc = {
      sources = { "src/lpsched.c", "src/luaproc.c" },
      libdirs = { "$(PTHREADS_LIBDIR)" },
      libraries = "pthread",
    }
  }
}

