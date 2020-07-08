package = "secmc-plugin"
version = "1.0-1"
source = {
   url = "https://github.com/Szww140621/secmc-plugin.git",
   tag = "v1.0-1",
   branch = "master"
}
description = {
      summary = "A test lua package with luarocks",
      homepage = "git://github.com/Szww140621/secmc-plugin",
      maintainer = "sz_140621@126.com",
      license = "MIT"

}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      ["test-shan.handler"] = "test-shan/handler.lua",
      ["test-shan.schema"] = "test-shan/schema.lua",
      ["test-shan.utils.access"] = "test-shan/utils/access.lua",
      ["test-shan.utils.permission"] = "test-shan/utils/permission.lua",
      ["test-shan.utils.redistool"] = "test-shan/utils/redistool.lua"
   }
}
