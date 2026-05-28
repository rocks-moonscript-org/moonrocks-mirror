package = 'chotto'
version = 'main-17'
source = {
   url = 'git+https://github.com/aiya000/chotto.lua'
}
description = {
   detailed = 'A TypeScript **Zod-inspired** validation library for Lua with luaCATS force type annotations!',
   homepage = 'https://github.com/aiya000/chotto.lua',
   license = 'MIT'
}
build = {
   type = 'builtin',
   modules = {
      chotto = 'src/chotto.lua'
   },
   copy_directories = {
      'doc'
   }
}
