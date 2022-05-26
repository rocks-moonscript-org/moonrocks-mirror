package = "lfsampler"
version = "1.0.0-1"
source = {
   url = "git://github.com/sewbacca/LFSampler",
   tag = "v1.0.0"
}
description = {
   detailed = [[
LFSampler is a sample profiler, for `Lua 5.1-5.4` or `LuaJIT`.
It uses the jit profiler, if available, or the debug library.]],
   homepage = "https://github.com/sewbacca/LFSampler",
   license = "MIT: https://github.com/sewbacca/LFSampler/blob/main/LICENSE"
}
dependencies = {
   "lua >= 5.1, <= 5.4"
}
build = {
   type = "builtin",
   modules = {
      ["lfsampler.ProfilerResults"] = "lua/lfsampler/ProfilerResults.lua",
      ["lfsampler.debugProfiler"] = "lua/lfsampler/debugProfiler.lua",
      ["lfsampler.formatters"] = "lua/lfsampler/formatters.lua",
      ["lfsampler.init"] = "lua/lfsampler/init.lua",
      ["lfsampler.jitProfiler"] = "lua/lfsampler/jitProfiler.lua"
   }
}
