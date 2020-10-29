package = "hussar"
version = "0.1.0-0"
source = {
   url = "git+https://github.com/thislight/hussar.git",
   tag = "v0.1.0-0"
}
description = {
   homepage = "https://github.com/thislight/hussar",
   license = "GPL-3",
}
dependencies = {
   "lua >=5.3, <=5.4",
   "away >=0.1.0, <1",
   "luapicohttpparser 0.2-1",
   "pathetic >=1.0.2, <2",
   "powerlog 0.1.0",
   "away-dataqueue 0.1.0",
   "lua-silva >=0.1.6, <0.2.0",
}
build = {
   type = "builtin",
   modules = {
      hussar = "src/hussar.lua",
      ['hussar.httputil'] = "src/httputil.lua",
      ['hussar.source.fake'] = "src/source/fake.lua",
      ['hussar.request_router'] = "src/request_router/init.lua",
      ['hussar.request_router.checkers'] = "src/request_router/checkers.lua",
      ['hussar.utils'] = "src/utils.lua",
      ['hussar.wrap_thread'] = "src/wrap_thread.lua",
      ['hussar.terr'] = "src/terr.lua",
      ['hussar.wrapline']  = "src/wrapline.lua",
   }
}
