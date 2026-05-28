package = "pico8-l10n"
version = "1.1.10-1"
source = {
  url = "git+https://github.com/Lucas-C/pico8-l10n.git",
  tag = "1.1.10"
}
description = {
  detailed = [[
A simple CLI program to translate PICO8 games (.p8 or .p8.png files)
using Gettext standard .po files for localization.
]],
  homepage = "https://lucas-c.github.io/pico8-l10n/",
  license = "MIT License"
}
dependencies = {
  "argparse ~> 0.7.1",
  "busted ~> 2.1.1",
  "inspect ~> 3.1.3",
  "lua >= 5.1",
  "lua-resty-template ~> 2.0-1",
  "luacheck ~> 1.2.0",
  "luafilesystem ~> 1.6.3", -- version used by luapak
  "luapak ~> 0.1.0",
  "luarocks ~> 2.4.4", -- luapak fails to install with LuaRocks 3
  "yaml ~> 1.1.2",
}
build = {
  type = "builtin",
  modules = {
    cli_args = "src/cli_args.lua",
    cmd_check = "src/cmd_check.lua",
    cmd_init = "src/cmd_init.lua",
    cmd_translate = "src/cmd_translate.lua",
    filepaths = "src/filepaths.lua",
    game_info = "src/game_info.lua",
    io_utils = "src/io_utils.lua",
    main = "src/main.lua",
    p8 = "src/p8.lua",
    p8_convert = "src/p8_convert.lua",
    pico8 = "src/pico8.lua",
    po = "src/po.lua",
    string_utils = "src/string_utils.lua",
  },
  install = {
    bin = {
      ["pico8-l10n"] = "src/main.lua"
    }
  }
}
