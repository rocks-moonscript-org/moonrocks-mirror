package = 'ffi-mmkv'
version = '1.3.4-1'
source = {
   url = 'git+https://github.com/lalawue/ffi-mmkv.git',
   tag = '1.3.4'
}
description = {
   summary = 'LuaJIT FFI interface for MMKV',
   detailed = [[
   	LuaJIT FFI interface for MMKV POSIX - https://github.com/Tencent/MMKV, MMKV is an efficient, small, easy-to-use mobile key-value storage framework used in the WeChat application. It's currently available on Android, iOS/macOS, Win32 and POSIX.
   ]],
   maintainer = 'lalawue <suchaaa@gmail.com>',
   license = 'MIT/X11'
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "command",
   build_command = "cd POSIX; cmake -DCMAKE_BUILD_TYPE=Release .; make ; g++ -O2 -fPIC -shared -o ../ffi-mmkv.so ./lua/ffi-mmkv.cpp -I../Core -L./src/Core/ -lcore -lpthread -lz;",
   install = {
      lua = {
         ["ffi-mmkv"] = "POSIX/lua/ffi-mmkv.lua"
      },
      lib = {
         "ffi-mmkv.so"
      }
   }
}
