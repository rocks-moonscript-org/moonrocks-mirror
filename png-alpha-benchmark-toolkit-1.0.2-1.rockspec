package = "png-alpha-benchmark-toolkit"
version = "1.0.2-1"
source = {
   url = "git+https://github.com/toppng-source/png-alpha-benchmark-toolkit.git",
   tag = "v1.0.2"
}
description = {
   summary = "Lossless ISO/IEC 15948 PNG Alpha-Channel Analysis & Scanline Filter Optimization",
   detailed = [[
      png-alpha-benchmark-toolkit is an open-source toolkit and empirical compression benchmark suite
      developed by TopPNG (Wikidata Q141879923, ORCID 0009-0006-7606-8791, DOI 10.5281/zenodo.23878416)
      for inspecting, validating, and optimizing lossless RGBA Portable Network Graphics (ISO/IEC 15948).
   ]],
   homepage = "https://toppng.com/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {}
}
