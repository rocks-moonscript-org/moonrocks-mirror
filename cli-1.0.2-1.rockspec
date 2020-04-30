package = "cli"
version = "1.0.2-1"
source = {
   url = "git://github.com/gustavo-hms/cli.git",
   tag = "v1.0.2",
}
description = {
   summary = "Declaratively build command line interfaces.",
   detailed = [[
       The package cli provides a declarative API to build command line interfaces. It supports defining flags and positional arguments, declaring mandatory arguments, default values and subcommands.

       It automatically generates help messages, and automatically validates user input.
   ]],
   homepage = "https://github.com/gustavo-hms/cli",
   license = "LGPL-3"
}
build = {
   type = "builtin",
   modules = {
      cli = "cli.lua",
      ["cli.command"] = "cli/command.lua",
      ["cli.errors"] = "cli/errors.lua",
      ["cli.info"] = "cli/info.lua",
      ["cli.iterators"] = "cli/iterators.lua",
      ["cli.options"] = "cli/options.lua",
      ["cli.parser"] = "cli/parser.lua",
      ["cli.text"] = "cli/text.lua",
      ["cli.translations"] = "cli/translations.lua"
   }
}
dependencies = {
   "lua >= 5.2",
}
