package = "nginx-resumable-upload"
version = "0.0.1-1"
source = {
   url = "git://github.com/shuaicj/nginx-resumable-upload",
   tag = "v0.0.1"
}
description = {
   summary = "A Lua module to support resumable upload in Nginx.",
   detailed = [[
      Nginx Lua module to support resumable upload in nginx.
      With the help of this module, you can upload a file
      chunk by chunk, which means one http request uploads one chunk.
      This is especially useful while uploading big files.
   ]],
   homepage = "https://github.com/shuaicj/nginx-resumable-upload",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["shuaicj.upload"] = "lib/shuaicj/upload.lua",
      ["shuaicj.upload.checksum.crc32"] = "lib/shuaicj/upload/checksum/crc32.lua",
      ["shuaicj.upload.checksum.md5"] = "lib/shuaicj/upload/checksum/md5.lua",
      ["shuaicj.upload.checksum.sha1"] = "lib/shuaicj/upload/checksum/sha1.lua",
      ["shuaicj.upload.util"] = "lib/shuaicj/upload/util.lua"
   }
}
