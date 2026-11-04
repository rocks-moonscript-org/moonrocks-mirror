-- rockspec 模板；1.1.0 由 package.sh 替换成版本号（文件名 pagesift-1.1.0-1.rockspec）。
-- 包里不带 C 库：请先安装 GitHub Release 里的 C 库，或设置环境变量 PAGESIFT_LIB。
package = "pagesift"
version = "1.1.0-1"
source = {
  url = "git+https://github.com/YOLOW92/pagesift.git",
  tag = "v1.1.0",
}
description = {
  summary = "LuaJIT binding of libpagesift: documents to Markdown and JSON",
  detailed = "Calls the libpagesift C ABI through LuaJIT ffi. LuaJIT only. The native library is not bundled.",
  homepage = "https://github.com/YOLOW92/pagesift",
  license = "AGPL-3.0-only",
}
dependencies = {
  "lua == 5.1",
}
build = {
  type = "builtin",
  modules = {
    pagesift = "bindings/lua/pagesift.lua",
  },
  copy_directories = {},
}
