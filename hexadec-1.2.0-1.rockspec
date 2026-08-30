package = "hexadec"
version = "1.2.0-1"
source = {
   url = "git+https://github.com/Joao-Feijao/Lua-Hexadecimal/",
   tag = "v1.2.0-1"
}
description = {
   summary = "A module that can make conversion between hexadec, numbers and strings.",
   detailed = [[
      Can convert numbers of n-base (up to 36) and strings to hexadec (special type representing hexadecimal in a table) that can be converted 
      back or become RGB (RGBA) colors, dump and be cleaned, with a secure mode for the decode function.
      Functions:
      NCode - Codes numeric strings to a hexadec type
      SCode - Codes strings to a hexadec type
      NDecode - Decodes a hexadec type to numbers
      SDecode - Decodes a hexadec type to strings
      IsHex - Validates a hexadec type or a string
      Clean - Cleans a hexadec type or a string or a number excluding non-hexadecimal caracteres
      Dump - Hexdump from a hexadec type
      Color - Uses a table or a string to create RGB or RGBA (with Alpha)
   ]],
   homepage = "https://github.com/Joao-Feijao/Lua-Hexadecimal/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   platforms = {
      lua55 = {
         modules = {
            hexadec = "hexadec55.lua",
            hexadec_lite = "hexadec_lite55.lua"
         }
      },
      lua54 = {
         modules = {
            hexadec = "hexadec54.lua",
            hexadec_lite = "hexadec_lite54.lua"
         }
      },
      lua53 = {
         modules = {
            hexadec = "hexadec53.lua",
            hexadec_lite = "hexadec_lite53.lua"
         }
      },
      lua51 = {
         modules = {
            hexadec = "hexadecJIT.lua",
            hexadec_lite = "hexadec_liteJIT.lua"
         }
      }
   }
}