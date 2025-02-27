package = "testshazam"
version = "0.0.1-4"
source = {
    url = "file://./rock/", -- or where the tarball/repo is
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
    copy_directories = {},  -- This should be empty when using install section!
    install = {
      lib = {
        ["FusionLib"] = "rock/libFusionLib.so" -- or your relative path
      }
    },
}