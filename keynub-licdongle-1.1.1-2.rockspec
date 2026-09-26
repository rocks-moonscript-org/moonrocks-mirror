-- LuaRocks manifest.
--
-- The rockspec filename carries the version and the rockspec revision
-- (1.1.1-2): LuaRocks derives both from it, so a new SDK version means a new
-- file, not an edited one. The trailing revision increments when the rock
-- changes without the SDK version changing.
--
-- source is the repository archive at a fixed commit. source.dir is needed
-- because the binding lives in a subdirectory of the SDK repository rather than
-- at its root; without it LuaRocks looks for the module beside the archive root
-- and reports it missing.
--
-- Apache-2.0 alone is correct here: the rock contains only the Lua source. The
-- native library is not bundled -- it is loaded at run time from the system
-- search path -- and its terms are stated separately in BINARY-LICENSE.txt.

package = "keynub-licdongle"
version = "1.1.1-2"

source = {
   url = "https://github.com/AB-KeyNub/KeyNub-SDK/archive/4dc2463168d11badabbbeea9e59e0366df3d84e9.zip",
   dir = "KeyNub-SDK-4dc2463168d11badabbbeea9e59e0366df3d84e9/bindings/lua",
}

description = {
   summary  = "Lua binding for the KeyNub USB-C license dongle",
   detailed = [[
      Talks to a KeyNub USB-C license dongle: authenticity verification, an
      encrypted session, licence records, monotonic counters and envelope
      encryption bound to the device.

      Pure Lua over LuaJIT's FFI. The native keynub_licdongle library is loaded
      at run time and is not part of this rock; install the SDK archive for the
      platform first.
   ]],
   homepage = "https://www.keynub.com/developers/lua/",
   license  = "Apache-2.0",
}

dependencies = {
   -- LuaJIT, for the FFI. PUC Lua has no ffi module, so the binding cannot load
   -- there; saying so here fails at install time instead of at the first call.
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      keynub_licdongle = "keynub_licdongle.lua",
   },
   copy_directories = {},
}
