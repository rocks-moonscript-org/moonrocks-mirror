package = "cmath"
version = "0.1-0"
source = {
   url = "git://github.com/gregfjohnson/cmath",
}
description = {
   summary = "Pure-lua implementation of complex numbers",
   detailed = [[
   cmath.lua is a pure-lua extension of the lua standard math library
   that includes complex arithmetic.  The goal of this complex arithmetic
   library is complete and seamless integration into lua.  cmath includes
   complex arithmetic with operator overloading via metatables, togther
   with extensions of all math library functions.  Complex operations
   return real values where possible, enabling equality comparisons with
   standard numbers.  As with lua strings, different expressions that
   evaluate to the same complex number refer to the same internal stored
   object.  This makes it possible to use complex values as table indices.

                    cmath.sqrt(-1) == i          ==>  true
                    e^(i*pi) == -1               ==>  true
                    t = {}
                    t[3 + 7*i] = 12
                    t[1 + 2 + 3*i + 4*i] == 12   ==>  true

    cmath is not "industrial-grade" from the perspectives of high
    performance or high numerical accuracy.  It is intended to be fun,
    easy to install and use, and good for playing around with complex
    numbers on small projects.

    If you need optimized performance or high-quality numerical results,
    you might want to look at lcomplex:
        http://webserver2.tecgraf.puc-rio.br/~lhf/ftp/lua.
   ]],
   homepage = "http://github.com/gregfjohnson/cmath",
   license = "GPL-2"
}
dependencies = {
   "lua >= 5.1, < 5.4",
}

build = {
   type = "none",
   install = {
      lua = {
          ["cmath"]      = "cmath.lua",
          ["cmath_anon"] = "cmath_anon.lua",
      }
   },
}
