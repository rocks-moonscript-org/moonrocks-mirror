rockspec_format = "3.0"
package = "dromozoa-vecmath"
version = "1.7-1"
source = {
  url = "https://github.com/dromozoa/dromozoa-vecmath/archive/v1.7.tar.gz";
  file = "dromozoa-vecmath-1.7.tar.gz";
}
description = {
  summary = "Pure-Lua implementation of javax.vecmath package";
  license = "GPL-3";
  homepage = "https://github.com/dromozoa/dromozoa-vecmath/";
  maintainer = "Tomoyuki Fujimori <moyu@dromozoa.com>";
}
test = {
  type = "command";
  command = "./test.sh";
}
build = {
  type = "builtin";
  modules = {
    ["dromozoa.vecmath"] = "dromozoa/vecmath.lua";
    ["dromozoa.vecmath.axis_angle4"] = "dromozoa/vecmath/axis_angle4.lua";
    ["dromozoa.vecmath.bernstein"] = "dromozoa/vecmath/bernstein.lua";
    ["dromozoa.vecmath.bezier"] = "dromozoa/vecmath/bezier.lua";
    ["dromozoa.vecmath.color3"] = "dromozoa/vecmath/color3.lua";
    ["dromozoa.vecmath.color4"] = "dromozoa/vecmath/color4.lua";
    ["dromozoa.vecmath.matrix2"] = "dromozoa/vecmath/matrix2.lua";
    ["dromozoa.vecmath.matrix3"] = "dromozoa/vecmath/matrix3.lua";
    ["dromozoa.vecmath.matrix4"] = "dromozoa/vecmath/matrix4.lua";
    ["dromozoa.vecmath.point2"] = "dromozoa/vecmath/point2.lua";
    ["dromozoa.vecmath.point3"] = "dromozoa/vecmath/point3.lua";
    ["dromozoa.vecmath.point4"] = "dromozoa/vecmath/point4.lua";
    ["dromozoa.vecmath.polynomial"] = "dromozoa/vecmath/polynomial.lua";
    ["dromozoa.vecmath.quat4"] = "dromozoa/vecmath/quat4.lua";
    ["dromozoa.vecmath.quickhull"] = "dromozoa/vecmath/quickhull.lua";
    ["dromozoa.vecmath.svd2"] = "dromozoa/vecmath/svd2.lua";
    ["dromozoa.vecmath.svd3"] = "dromozoa/vecmath/svd3.lua";
    ["dromozoa.vecmath.tex_coord2"] = "dromozoa/vecmath/tex_coord2.lua";
    ["dromozoa.vecmath.tex_coord3"] = "dromozoa/vecmath/tex_coord3.lua";
    ["dromozoa.vecmath.tex_coord4"] = "dromozoa/vecmath/tex_coord4.lua";
    ["dromozoa.vecmath.tuple2"] = "dromozoa/vecmath/tuple2.lua";
    ["dromozoa.vecmath.tuple3"] = "dromozoa/vecmath/tuple3.lua";
    ["dromozoa.vecmath.tuple4"] = "dromozoa/vecmath/tuple4.lua";
    ["dromozoa.vecmath.vector2"] = "dromozoa/vecmath/vector2.lua";
    ["dromozoa.vecmath.vector3"] = "dromozoa/vecmath/vector3.lua";
    ["dromozoa.vecmath.vector4"] = "dromozoa/vecmath/vector4.lua";
  };
}
