package = "stuart-ml"
version = "0.1.3-0"
source = {
   url = "https://github.com/BixData/stuart-ml/archive/0.1.3-0.tar.gz",
   dir = "stuart-ml-0.1.3-0"
}
description = {
   summary = "A native Lua implementation of Spark MLlib",
   detailed = [[
      A native Lua implementation of Spark MLlib, designed for
      use with Stuart, the Spark runtime for embedding and edge
      computing.
   ]],
   homepage = "https://github.com/BixData/stuart-ml",
   maintainer = "David Rauschenbach",
   license = "Apache 2.0"
}
dependencies = {
   "lua >= 5.1",
   "stuart = 0.1.3"
}
build = {
   type = "builtin",
   modules = {
      ["stuart-ml"] = "src/stuart-ml.lua",
      ["stuart-ml.clustering.KMeans"] = "src/stuart-ml/clustering/KMeans.lua",
      ["stuart-ml.clustering.KMeansModel"] = "src/stuart-ml/clustering/KMeansModel.lua",
      ["stuart-ml.clustering.VectorWithNorm"] = "src/stuart-ml/clustering/VectorWithNorm.lua",
      ["stuart-ml.linalg.BLAS"] = "src/stuart-ml/linalg/BLAS.lua",
      ["stuart-ml.linalg.DenseVector"] = "src/stuart-ml/linalg/DenseVector.lua",
      ["stuart-ml.linalg.SparseVector"] = "src/stuart-ml/linalg/SparseVector.lua",
      ["stuart-ml.linalg.Vector"] = "src/stuart-ml/linalg/Vector.lua",
      ["stuart-ml.linalg.Vectors"] = "src/stuart-ml/linalg/Vectors.lua",
      ["stuart-ml.util.isInstanceOf"] = "src/stuart-ml/util/isInstanceOf.lua",
      ["stuart-ml.util.MLUtils"] = "src/stuart-ml/util/MLUtils.lua",
      ["stuart-ml.util.mosesPatchedRange"] = "src/stuart-ml/util/mosesPatchedRange.lua",
      ["stuart-ml.util.unzip"] = "src/stuart-ml/util/unzip.lua"
   }
}
