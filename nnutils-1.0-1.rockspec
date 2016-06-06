package = "nnutils"
version = "1.0-1"
source = {
   url = "git://github.com/eywalker/nnutils"
}
description = {
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      nnutils = "init.lua",
      ["nnutils.centercrop"] = "centercrop.lua",
      ["nnutils.dataloader"] = "dataloader.lua",
      ["nnutils.logger"] = "logger.lua",
      ["nnutils.minibatch"] = "minibatch.lua",
      ["nnutils.misc"] = "misc.lua",
      ["nnutils.mnistloader"] = "mnistloader.lua",
      ["nnutils.onehot"] = "onehot.lua",
      ["nnutils.processingchain"] = "processingchain.lua",
      ["nnutils.processor"] = "processor.lua",
      ["nnutils.randomcrop"] = "randomcrop.lua",
      ["nnutils.randomflip"] = "randomflip.lua",
      ["nnutils.trainer"] = "trainer.lua"
   }
}
