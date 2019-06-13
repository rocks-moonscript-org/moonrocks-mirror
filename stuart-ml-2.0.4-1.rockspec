package = "stuart-ml"
version = "2.0.4-1"
source = {
   url = "https://github.com/BixData/stuart-ml/archive/2.0.4-1.tar.gz",
   dir = "stuart-ml-2.0.4-1"
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
   "lua >= 5.1, <= 5.3",
   "stuart ~> 2"
}
build = {
   type = "builtin",
   modules = {
      ["stuart-ml"] = "src/stuart-ml.lua",
      ["stuart-ml.clustering.KMeans"] = "src/stuart-ml/clustering/KMeans.lua",
      ["stuart-ml.clustering.KMeansModel"] = "src/stuart-ml/clustering/KMeansModel.lua",
      ["stuart-ml.clustering.localKMeans"] = "src/stuart-ml/clustering/localKMeans.lua",
      ["stuart-ml.clustering.VectorWithNorm"] = "src/stuart-ml/clustering/VectorWithNorm.lua",
      ["stuart-ml.linalg.distributed.RowMatrix"] = "src/stuart-ml/linalg/distributed/RowMatrix.lua",
      ["stuart-ml.linalg.BLAS"] = "src/stuart-ml/linalg/BLAS.lua",
      ["stuart-ml.linalg.DenseMatrix"] = "src/stuart-ml/linalg/DenseMatrix.lua",
      ["stuart-ml.linalg.DenseVector"] = "src/stuart-ml/linalg/DenseVector.lua",
      ["stuart-ml.linalg.Matrices"] = "src/stuart-ml/linalg/Matrices.lua",
      ["stuart-ml.linalg.Matrix"] = "src/stuart-ml/linalg/Matrix.lua",
      ["stuart-ml.linalg.SparseMatrix"] = "src/stuart-ml/linalg/SparseMatrix.lua",
      ["stuart-ml.linalg.SparseVector"] = "src/stuart-ml/linalg/SparseVector.lua",
      ["stuart-ml.linalg.Vector"] = "src/stuart-ml/linalg/Vector.lua",
      ["stuart-ml.linalg.Vectors"] = "src/stuart-ml/linalg/Vectors.lua",
      ["stuart-ml.random.RandomRDDs"] = "src/stuart-ml/random/RandomRDDs.lua",
      ["stuart-ml.regression.LabeledPoint"] = "src/stuart-ml/regression/LabeledPoint.lua",
      ["stuart-ml.stat.MultivariateOnlineSummarizer"] = "src/stuart-ml/stat/MultivariateOnlineSummarizer.lua",
      ["stuart-ml.stat.statistics"] = "src/stuart-ml/stat/statistics.lua",
      ["stuart-ml.stat.corr.Correlation"] = "src/stuart-ml/stat/corr/Correlation.lua",
      ["stuart-ml.stat.corr.Correlations"] = "src/stuart-ml/stat/corr/Correlations.lua",
      ["stuart-ml.stat.corr.PearsonCorrelation"] = "src/stuart-ml/stat/corr/PearsonCorrelation.lua",
      ["stuart-ml.util"] = "src/stuart-ml/util.lua",
      ["stuart-ml.util.java.arrays"] = "src/stuart-ml/util/java/arrays.lua",
      ["stuart-ml.util.java.iterator"] = "src/stuart-ml/util/java/iterator.lua",
      ["stuart-ml.util.Loader"] = "src/stuart-ml/util/Loader.lua",
      ["stuart-ml.util.MLUtils"] = "src/stuart-ml/util/MLUtils.lua",
      ["stuart-ml.util.NumericParser"] = "src/stuart-ml/util/NumericParser.lua",
      ["stuart-ml.util.random"] = "src/stuart-ml/util/random.lua",
      ["stuart-ml.util.StringTokenizer"] = "src/stuart-ml/util/StringTokenizer.lua"
   }
}
