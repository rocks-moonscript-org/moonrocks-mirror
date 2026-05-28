-- luaturtle-0.1.0-1.rockspec
--
-- LuaRocks package spec for Lua Turtle (Desktop).
--
-- External system dependencies (install before running luarocks install):
--
--   macOS (Homebrew):
--     brew install sdl2 cairo readline
--     luarocks install luaturtle \
--       READLINE_INCDIR=/opt/homebrew/opt/readline/include \
--       READLINE_LIBDIR=/opt/homebrew/opt/readline/lib
--
--   Linux (apt):
--     sudo apt install libsdl2-dev libcairo2-dev libreadline-dev
--     luarocks install luaturtle
--
--   Windows: not yet supported (readline pending — see GOTCHAS.md).
--
-- Before publishing: replace the source url/tag below with the real repo.

package = "luaturtle"
version = "0.1.0-1"

source = {
    url    = "git+https://github.com/grandballoon/luaturtledesktop",
    tag    = "v0.1.0",
}

description = {
    summary  = "Desktop turtle graphics for Lua 5.4 (Cairo + SDL2)",
    detailed = [[
        A desktop turtle graphics library for Lua 5.4, inspired by Python's
        turtle module and Seymour Papert's Mindstorms. Students write normal
        Lua scripts; a Cairo-rendered graphics window appears.

        Features: multi-turtle, animated undo, REPL mode (readline), full
        Python turtle API compatibility for ~40 commands.
    ]],
    homepage = "https://github.com/grandballoon/luaturtledesktop",
    license  = "MIT",
}

dependencies = {
    "lua >= 5.4",
}

-- Declare required system libraries.
-- LuaRocks uses these to locate headers and set $(NAME_INCDIR) / $(NAME_LIBDIR).
-- On macOS, SDL2 and Cairo are found automatically via Homebrew's standard
-- prefix. Readline is keg-only on Homebrew and requires explicit path hints
-- (see install command at the top of this file).
external_dependencies = {
    SDL2 = {
        header  = "SDL2/SDL.h",
    },
    CAIRO = {
        header  = "cairo.h",
    },
    READLINE = {
        header  = "readline/readline.h",
    },
}

build = {
    type = "builtin",

    modules = {
        -- C extension: Cairo + SDL2 rendering backend
        turtlecairo = {
            sources  = { "turtlecairo.c" },
            libraries = { "SDL2", "cairo" },
            incdirs  = { "$(SDL2_INCDIR)", "$(CAIRO_INCDIR)" },
            libdirs  = { "$(SDL2_LIBDIR)", "$(CAIRO_LIBDIR)" },
        },

        -- C extension: GNU readline callback interface for REPL
        turtle_readline = {
            sources   = { "turtle_readline.c" },
            libraries = { "readline" },
            incdirs   = { "$(READLINE_INCDIR)" },
            libdirs   = { "$(READLINE_LIBDIR)" },
        },

        -- Lua modules
        turtle                = "turtle.lua",
        ["turtle.core"]       = "turtle/core.lua",
        ["turtle.screen"]     = "turtle/screen.lua",
        ["turtle.colors"]     = "turtle/colors.lua",
        ["turtle.repl"]       = "turtle/repl.lua",
        ["turtle.annotations"] = "turtle/annotations.lua",
        ["turtle.renderer"]    = "turtle/renderer.lua",
    },

    install = {
        -- Install the luaturtle shell script to the LuaRocks bin path.
        -- After install: luaturtle              # launch REPL
        --                luaturtle myscript.lua # run a script
        bin = { "luaturtle" },
    },
}
