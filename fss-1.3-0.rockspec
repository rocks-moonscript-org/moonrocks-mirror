package = "fss"
version = "1.3-0"
source = {
   url = "git://github.com/LighghtEeloo/fss",
   tag = "v1.3-0"
}
description = {
   summary = "Lightweight cmdline fs search.",
   detailed = [[
      Lightweight cmdline fs search.

      usage:  lua /home/lighght/Xpace/fss/fss.lua <PATTERNS> <PATH>{ <PATH>}
      where:  <PATH>     ::= / | /<name>{/<name>} | <name>{/<name>}
              <PATTERNS> ::= <PATTERN>{,<PATTERN>}
              <PATTERN>  ::= <cstr>{.<cstr>}
              <cstr>     ::= <consecutive str>
              <name>     ::= <file name>
            
      means:  given a group of patterns, 
              use each pattern to search in all paths recursively;
              and output the combined results in stdout.
            
       also:  if one path already satisfies, its children will not be included
            
       e.g.:  X.482.H    :   1 pattern, which finds Xpace/EECS-482/Homeworks
       e.g.:  Xp.e.482.H :   1 pattern, does the same
       e.g.:  Xe.482.H   :   1 pattern, but fails the prev search
       e.g.:  X.482.H,Y  :   2 patterns, find [<prev search>, Yggdrasill]
                           but no more children under Yggdrasill
   ]],
   homepage = "https://github.com/LighghtEeloo/fss", -- We don't have one yet
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 6",
   "penlight >= 1.10"
}
build = {
   type = "builtin",
   modules = {
      rc = "rc.lua",
   },
   install = {
      bin = {
         [ "fss" ] = "fss",
         [ "fop" ] = "fop",
      }
   }
}