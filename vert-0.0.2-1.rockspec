package = "Vert"

version = "0.0.2-1"

source = { url = "git://github.com/aconbere/vert.git"
         , tag = "v0.0.2"
         }

description = { summary = "Creates isolated development environment"
              , detailed = [[
                  Vert is a tool for building isolated development environments akin to
                  Virtualenv in Python. It handles compiling and installing Lua to a local
                  directory as well as setting up a local instance of LuaRocks.
                ]]
              , license = "MIT/X11"
              , maintainer = "Anders Conbere <aconbere@gmail.com>"
              }

dependencies = { "lua == 5.1"
               , "luafilesystem"
               , "luasocket"
               }

build = { type = "builtin"
        , modules = { vert    = "./src/vert.lua" 
                    , optimal = "./src/optimal.lua"
                    , utils   = "./src/utils.lua"
                    }
        , install = { bin = { vert = "src/vert.lua" } }
        }

