---@diagnostic disable: lowercase-global
package = "alib.eventbus"
version = "0.1.0-1"

source = {
  url = "git+https://gitlab.com/lua_rocks/eventbus.git",
  tag = "v0.1.0",
}

description = {
  summary = "A library for providing an Event Bus with Sections and Channels",
  detailed = [[
An event bus to implement the ability to subscribe both to events occurring in
all instances of classes(or named events), and separately for specific unique
instances. Create a subscription, when notifying subscribers,
the handler is given both access to the object that caused the event and
to additional parameters(event-data) from the event emitter context.
The main purpose is the ability to expand the standard behavior of objects due
to the ability to attach handlers to specific instances of objects.
But also with the ability to implement event subscriptions for all instances.
]],
  homepage = "https://gitlab.com/lua_rocks/eventbus",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["alib.eventbus"] = "src/alib/eventbus.lua"
  }
}
