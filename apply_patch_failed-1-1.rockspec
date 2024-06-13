package = "apply_patch_failed"
version = "1-1"
source = {
   url = "git+https://github.com/sugue/apply_patch_failed_test.git",
   branch = "main",
}
description = {
   summary = "test",
   homepage = "https://github.com/sugue/apply_patch_failed_test.git",
   license = "MIT",
   maintainer = "zhanlangorz@gmail.com"
}
dependencies = {
   "lua-cjson",
}
build = {
   type = "builtin",
   modules = {
		["src.test"] = "test.lua",
	},
	   patches = {
       ["test.patch"] = [[
--- test.orig.lua	2024-06-13 16:56:44.149289978 +0800
+++ test.lua	2024-06-13 16:57:12.857580729 +0800
@@ -1 +1 @@
-print('hello world patch failed')
+print('hello world patch failed 11111')
       ]]
       },
}
