package = 'torch-hdf5-logger'
version = "0.0.1-1"

description = {
  summary = 'Torch Hdf5 Logger',
  detailed = [[
    A logger which outputs to hdf5 files
  ]]
}

source = {
  url = 'https://github.com/gpleiss/torch-hdf5-logger'
}

dependencies = {
  'torch >= 7.0',
  'lua ~> 5.1',
  'moses',
  'hdf5'
}
build = {
  type = 'builtin',
  modules = {
    Hdf5Logger = 'hdf5-logger.lua'
  }
}
