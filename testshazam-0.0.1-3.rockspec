package = "testshazam"
version = "0.0.1-3"
source = {
    url = "file://./rock/", 
}
description = {
    summary = "مكتبة ديناميكية للعمل مع Lua",
    detailed = "مكتبة C تعمل مع Lua.",
    homepage = "https://example.com",  
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",  
}
build = {
    type = "builtin",
    modules = {
        ["FusionLib"] = "/rock/libFusionLib.so",  
    },
}

