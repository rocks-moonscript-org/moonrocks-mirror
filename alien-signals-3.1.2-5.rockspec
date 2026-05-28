package = "alien-signals"
version = "3.1.2-5"

source = {
   url = "git+https://github.com/YanqingXu/alien-signals-in-lua.git",
   tag = "v3.1.2"
}

description = {
   summary = "Alien Signals - Reactive programming system for Lua",
   detailed = [[
      Alien Signals is a high-performance reactive programming system for Lua,
      ported from stackblitz/alien-signals.

      It provides automatic dependency tracking and efficient update propagation
      through a small and powerful API.

      Core features:
      - Signal: mutable reactive values
      - Computed: derived values with caching
      - Effect: side effects that re-run when dependencies change
      - EffectScope: group and dispose multiple effects
      - Batch: efficient bulk state updates
      - Watch: observe reactive value changes
   ]],
   homepage = "https://github.com/YanqingXu/alien-signals-in-lua",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      alien_signals = "alien_signals.lua",
      bit = "bit.lua"
   },
   copy_directories = {}
}
