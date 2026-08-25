rockspec_format = "3.0"
package = "pandoc-annotations"
version = "0.0.1-1"

source = {
    url = "git+https://github.com/lua-craters/pandoc-annotations.git",
    branch = "main"
}

description = {
    summary = "LuaCATS annotations for Pandoc's Lua filter/reader/writer API",
    detailed = [[
      An installable successor to massifrg/pandoc-luals-annotations.

      Type annotations, written using the Lua Language Server's LuaCATS
      annotation system, for the Lua API that Pandoc (https://pandoc.org)
      exposes to Lua filters, custom readers, and custom writers: the
      pandoc.* module and its submodules, the full AST element hierarchy
      (Block/Inline subtypes, Meta, Attr, etc.), the List/Filter machinery,
      and the PANDOC_* filter-environment globals.

      Confirmed against Pandoc 3.10 by running the actual interpreter,
      not just read off the manual -- constructor signatures, return
      value shapes, and userdata-vs-table distinctions were verified at
      runtime where the manual was ambiguous or silent.
   ]],
    homepage = "https://github.com/lua-craters/pandoc-annotations",
    license = "MIT",
    maintainer = "Michael Cummings <mgcummings@yahoo.com>"
}

dependencies = {}

build = {
    type = "lls-addon",
    -- This block replaces config.json settings
    settings = {
        runtime = {
            version = "Lua 5.4",
        },
        workspace = {
            checkThirdParty = false
        }
    }
}
