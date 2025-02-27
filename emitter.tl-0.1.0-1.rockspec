rockspec_format = "3.0"
package = "emitter.tl"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/mtdowling/emitter.tl.git",
   tag = "v0.1.0",
   branch = "main"
}
description = {
   summary = "A small, strongly typed event emitter library for Lua and typed with Teal",
   detailed = [[
   * Designed around strongly typed events using Teal. Events are no longer just
     strings and bags of data.
   * Allows for decoupling logic by subscribing and unsubscribing to events.
   * Support for receiving an event at most once.
   * Can efficiently forward all events from an Emitter to another Emitter.
     This is great for things like games that have global events and listeners
     that should only persist for the lifetime of a specific emitter.
   * Listeners can be added or removed while emitting, and removals take effect
     immediately.
  ]],
   homepage = "https://github.com/mtdowling/emitter.tl",
   license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
   "lua >= 5.1"
}
build_dependencies = {
   "tl >= 0.24.1",
   "cyan >= 0.4.0",
   "luacheck >= 0.2.0"
}
build = {
   type = "builtin",
   modules = {
      emitter = "src/emitter.lua"
   },
   install = {
      lua = {
         emitter = "src/emitter.tl"
      }
   }
}
test_dependencies = {
   "busted"
}
test = {
   type = "busted"
}
