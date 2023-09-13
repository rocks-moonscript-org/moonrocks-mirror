package = "lfsampler"
version = "1.0.3-3"
source = {
   url = "git+https://github.com/sewbacca/LFSampler.git",
   tag = "v1.0.3"
}
description = {
   summary = "# LFSampler",
   detailed = "# LFSampler",
   homepage = "https://github.com/sewbacca/LFSampler",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      ["lfsampler.ProfilerResults"] = "lua/lfsampler/ProfilerResults.lua",
      ["lfsampler.debugProfiler"] = "lua/lfsampler/debugProfiler.lua",
      ["lfsampler.formatters"] = "lua/lfsampler/formatters.lua",
      ["lfsampler.init"] = "lua/lfsampler/init.lua",
      ["lfsampler.jitProfiler"] = "lua/lfsampler/jitProfiler.lua"
   },
}
