package = "smbus"
version = "1.0-1"
source = {
   url = "git+https://gitee.com/PlumBlossomMaid/smbus-lua.git"
}
description = {
   summary = "SMBus Lua bindings with C++ backend",
   detailed = "SMBus Lua bindings that depend on smbus-cpp for low-level communication.",  
   homepage = "https://gitee.com/PlumBlossomMaid/smbus-lua",
   license = "MIT"
}
dependencies = {  
    "lua >= 5.1", -- Lua 版本依赖   
}
build = {  
    type = "cmake"
}