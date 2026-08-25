rockspec_format = "3.0"
package = "marte"
version = "0.1.0-1"

source = {
   url = "git+ssh://git@github.com/dev-diego-fully/marte.git",
   tag = "v0.1.0"
}

description = {
   summary = "A general-purpose library built in Rust",
   detailed = [[
      Marte was developed to address specific pain points when working with pure Lua. Additionally, it was built to require low maintenance over time.
	   It currently provides modules for vectors and list operations, a basic PRNG, and regex, but it can be expanded in the future.
	   New modules may be added in the future.
   ]],
   homepage = "https://github.com/dev-diego-fully/marte",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "command",
   build_command = "$(LUA) scripts/build.lua linux",
   install = {
      lib = {
         ["_marte"] = "target/release/_marte.so",
      },
      lua = {
         ["marte"] = "library/init.lua",
         ["marte.vector"] = "library/vector.lua",
         ["marte.regex"] = "library/regex.lua",
         ["marte.random"] = "library/random.lua",
         ["marte._testsutils.random"] = "tests/random_utils.lua"
      }
   },
   copy_directories = { "tests" },
   platforms = {
      windows = {
         build = {
            build_command = "$(LUA) scripts/build.lua windows",
            install = {
               lib = {
                  ["_marte"] = "target/release/_marte.dll"
               }
            }
         }
      },
      macosx = {
         build = {
            build_command = "$(LUA) scripts/build.lua macosx",
            install = {
               lib = {
                  ["_marte"] = "target/release/_marte.dylib"
               }
            }
         }
      }
   }
}

external_dependencies = {
   CARGO = {
      program = "cargo"
   }
}

test_dependencies = {
   "busted"
}

test = {
   type = "busted",
   flags = {"tests"}
}
