package = "Math-RungeKutta"
version = "1.07-2"
source = {
   url = "http://cpansearch.perl.org/src/PJB/Math-RungeKutta-1.07/lua/RungeKutta.lua"
}
description = {
   summary = "Runge-Kutta methods for integrating systems of differential equations",
   detailed = [[
      RungeKutta.lua offers algorithms for the numerical integration
      of simultaneous differential equations of the form dY/dt = F(t,Y)
      where Y is an array of variables whose initial values Y(0) are
      known, and F is a function known from the dynamics of the problem.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/RungeKutta.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["Math.RungeKutta"] = "RungeKutta.lua"
   },
}
