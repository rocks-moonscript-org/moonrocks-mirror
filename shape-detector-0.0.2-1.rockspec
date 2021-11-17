package = "shape-detector"
version = "0.0.2-1"
source = {
   url = "git://github.com/jupiterio/shape-detector",
   tag = "v0.0.2"
}
description = {
   summary = "Shape/gesture/stroke detection/recognition algorithm based on the $1 (dollar) recognizer. Ported from https://github.com/MathieuLoutre/shape-detector",
   detailed = "Shape/gesture/stroke detection/recognition algorithm based on the $1 (dollar) recognizer. Ported from https://github.com/MathieuLoutre/shape-detector",
   homepage = "https://github.com/jupiterio/shape-detector",
   license = "MIT"
}
dependencies = {
    "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      ShapeDetector = "ShapeDetector.lua"
   }
}
