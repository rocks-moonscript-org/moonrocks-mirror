package = 'sproto'
version = '0.1.20210820-1'
source = {
   url = 'git+https://github.com/lalawue/sproto.git',
   tag = "0.1.20210820"
}
description = {
   summary = 'Yet another protocol library like google protocol buffers , but simple and fast.',
   detailed = [[Yet another protocol library like google protocol buffers , but simple and fast., from https://github.com/cloudwu/sproto]],
   homepage = 'https://github.com/lalawue/sproto',
   maintainer = 'lalawue <suchaaa@gmail.com>',
   license = 'MIT/X11'
}
dependencies = {
   "lua >= 5.1",
   "lpeg >= 1.0.2"
}
build = {
   type = "builtin",
   modules = {
      ["sproto"] = {
         sources = { "src/sproto.c", "src/lsproto.c" },
	 incdirs = { "src" },
      }
   }
}
