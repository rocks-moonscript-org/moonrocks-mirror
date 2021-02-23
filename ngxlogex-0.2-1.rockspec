package = "ngxlogex"
version = "0.2-1"
source = {
   url = "git+https://github.com/z7z8th/rocks",
   tag = "0.2"
}
description = {
   summary = "ngx.log extension for openresty",
   detailed = [[
      Extended usage for ngx.log, accepts table as parameter now;
      Tail call is used to avoid stack depth increase, overhead is very small.
      Judged loglevel inside log function, which avoids table serialization on non-printed logs.

      `require' once in init/init_worker, and use anywhere, not necessary to require in every module

      Old usage:
      ngx.log(ngx.DEBUG, json.encode( { aaa=1, bbb='jklmn'} ) )

      New usage:
      require 'ngxlogex'  -- require once in init/init_worker, and use anywhere, not necessary to require in every module
      ngx.log(ngx.DEBUG, { aaa=1, bbb='jklmn'})

      ngx.debug({ aaa=1, bbb='jklmn'})

      ngx.info(...)
      ngx.notice(...)
      ngx.warn(...)
      ngx.error(...)
      ngx.crit(...)
      ngx.alert(...)
      ngx.emerg(...)

      Use `inspect' for serialization:
      local inspect = require 'inspect'
      require 'ngxlogex'.init({ table = inspect })  -- require+init once in init/init_worker, and use anywhere
   ]],
   homepage = "",
   license = "2-clause BSD",
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ngxlogex"] = "ngxlogex/ngxlogex.lua",
   }
}