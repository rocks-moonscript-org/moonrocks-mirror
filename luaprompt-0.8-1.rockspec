package = "luaprompt"
version = "0.8-1"
source = {
   url = "git+https://github.com/dpapavas/luaprompt.git",
   tag = "v0.8"
}
description = {
   summary = "A Lua command prompt with pretty-printing and auto-completion",
   detailed = [[
luaprompt is both an interactive Lua prompt that can be used instead
of the official interpreter, as well as module that provides a Lua
command prompt that can be embedded in a host application.  As a
standalone interpreter it provides many conveniences that are missing
from the official Lua interpreter.  As an embedded prompt, it's meant
for applications that use Lua as a configuration or interface language
and can therefore benefit from an interactive prompt for debugging or
regular use.

luaprompt features:

* Readline-based input with history and completion: In particular all
  keywords, global variables and table accesses (with string or
  integer keys) can be completed in addition to readline's standard
  file completion.  Module names are also completed, for modules
  installed in the standard directories, and completed modules can
  optionally be loaded.

* Persistent command history (retained across sessions), as well as
  recording of command results for future reference.

* Proper value pretty-printing for interactive use: When an expression
  is entered at the prompt, all returned values are printed
  (prepending with an equal sign is not required).  Values are printed
  in a descriptive way that tries to be as readable as possible.  The
  formatting tries to mimic Lua code (this is done to minimize
  ambiguities and no guarantees are made that it is valid code).
  Additionally, each value is stored in a table for future reference.

* Color highlighting of error messages and variable printouts.
]],
   homepage = "https://github.com/dpapavas/luaprompt",
   license = "MIT/X11"
}
supported_platforms = {
   "!windows",
   "!win32"
}
dependencies = {
   "lua >= 5.1",
   "argparse"
}
external_dependencies = {
   HISTORY = {
      header = "readline/history.h",
      library = "history"
   },
   READLINE = {
      header = "readline/readline.h",
      library = "readline"
   }
}
build = {
   type = "builtin",
   modules = {
      prompt = {
         defines = {
            "_GNU_SOURCE",
            "HAVE_LIBREADLINE",
            "HAVE_READLINE_HISTORY",
            "HAVE_IOCTL",
            "COMPLETE_KEYWORDS",
            "COMPLETE_TABLE_KEYS",
            "COMPLETE_METATABLE_KEYS",
            "COMPLETE_FILE_NAMES",
            "COMPLETE_MODULES",
            "SAVE_RESULTS",
            "RESULTS_TABLE_NAME=\"_\""
         },
         incdirs = {
            "$(READLINE_INCDIR)",
            "$(HISTORY_INCDIR)"
         },
         libdirs = {
            "$(READLINE_LIBDIR)",
            "$(HISTORY_LIBDIR)"
         },
         libraries = {
            "readline",
            "history"
         },
         sources = {
            "prompt.c",
            "module.c"
         }
      }
   },
   install = {
      bin = {
         luap = "luap.lua"
      }
   }
}
