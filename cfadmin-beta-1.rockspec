package = "cfadmin"
version = "beta-1"
source = {
   url = "git+https://github.com/candymi/cfadmin",
   branch = "master"
}

description = {
   summary       = "Lua High Performance Web Framework.",
   detailed      = [[
      * Asynchronous I/O - The Network I/O and File I/O have been transformed, and the internal operations are now fully asynchronous.

      * Rich built-in libraries - Many complete built-in libraries are implemented to complete the development and coverage of all aspects of basic applications.

      * Automated scheduling - The bottom layer will automatically schedule coroutines, timers and I/O, and you can also choose to control it manually.

      * Security and Encryption - Provides nearly 60 kinds of hash/digest/hash/signature algorithms, and internally supports SSL Server/Client.

      * Data Exchange Format - Do you need JSON / PROTOBUF / XML / MSGPACK / BSON ? Great, they are all provided!

      * Multi-database driver - MySQL / PGSQL / MSSQL / MongoDB are all available, you can also use it as you like.

      * Enforcement and standardization -The framework forces you to write code, and you can also pass it on to your close friends.
   ]],
   homepage      = "https://cfadmin.cn",
   maintainer    = "869646063@qq.com",
   license       = "BSD"
}

dependencies = {
   "lua >= 5.3"
}

build = {
   type = "builtin",
   modules = {
   }
}