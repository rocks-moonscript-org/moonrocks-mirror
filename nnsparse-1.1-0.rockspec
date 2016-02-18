package = "nnsparse"
version = "1.1-0"

source = {
   url = "git://github.com/fstrub95/nnsparse.git",
   tag = "v1.1.0"
}

description = {
   summary = "Tools for sparse networks with the Torch Framework",
   detailed = [[
   ]],
   homepage = "https://github.com/fstrub95/nnsparse",
   license = "BSD"
}

dependencies = {
   'torch >= 7.0',
   'nn'
}

 build = {
    type = "builtin",
    modules = {
      ['nnsparse.init'] = 'init.lua',
      ['nnsparse.SparseTools']         = 'src/SparseTools.lua',
      ['nnsparse.SparseCriterion']     = 'src/SparseCriterion.lua',
      ['nnsparse.SDAECriterion']       = 'src/SDAECriterion.lua',
      ['nnsparse.SDAESparseCriterion'] = 'src/SDAESparseCriterion.lua',
      ['nnsparse.SparseLinearBatch']   = 'src/SparseLinearBatch.lua',
      ['nnsparse.SparseSorting']       = 'src/SparseSorting.lua',
      ['nnsparse.Batchifier']          = 'src/Batchifier.lua',
      ['nnsparse.DynamicSparseTensor'] = 'src/DynamicSparseTensor.lua',
    },

}
