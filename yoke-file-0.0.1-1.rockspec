package = "yoke-file"
version = "0.0.1-1"
source = {
   url = "file:///home/zen/lib/yoke/rocks/file.zip"
}
description = {
  homepage = "https://yokerp.com",
  license = "GNU",
}
dependencies = {
  "yoke >= 0.0.2-2",
}

build = {
  type = "builtin",
  modules = {
    ["yoke.yoke.apps.file.conf"] = "yoke/yoke/apps/file/conf.lua",
    ["yoke.yoke.apps.file.mods.files"] = "yoke/yoke/apps/file/mods/files.lua",
    ["yoke.yoke.apps.file.mods.docs"] = "yoke/yoke/apps/file/mods/docs.lua",
    ["yoke.yoke.apps.file.mods.folders"] = "yoke/yoke/apps/file/mods/folders.lua",
    ["yoke.yoke.apps.file.mods.images"] = "yoke/yoke/apps/file/mods/images.lua",
    ["yoke.yoke.apps.file.meta.tail"] = "yoke/yoke/apps/file/meta/tail.lua",
    ["yoke.yoke.apps.file.lang.en"] = "yoke/yoke/apps/file/lang/en.lua",
    ["yoke.yoke.apps.file.lang.uk"] = "yoke/yoke/apps/file/lang/uk.lua",
    ["yoke.file"] = "yoke/file.lua"
  },
  install = {
    bin = {
    }
  }
}
