rockspec_format = "3.0"
package = "fipc"
version = "1.0.0-1"
source = {
   -- The release's archive: this folder's fipc.lua, README.md, examples and the repository's LICENSE, with the
   -- native library for each platform in native/<platform>/ (python devtool.py package lua)
   url = "https://github.com/fastipc/fastipc/releases/download/v1.0.0/fipc-lua-1.0.0.tar.gz",
   dir = "fipc-lua-1.0.0",
}
description = {
   summary = "Shared-memory IPC for LuaJIT: streams, broadcasts, work queues and services between processes on one machine.",
   detailed = [[
      The LuaJIT binding of FastIPC, a small library written in Zig: streams (a server accepts one client at a time on
      a name; each connection has a shared-memory ring per direction), broadcasts from one publisher to many
      subscribers, work queues from many producers to many consumers, and services from many clients to a pool of
      servers, with replies. Copied messages of any size, zero-copy messages, timeouts and the peer's end reported at
      once. Through LuaJIT's FFI: one Lua module and the native
      library for Windows x64, Linux x64 and arm64 (glibc 2.34+) and macOS arm64 (14.4+), no compiler needed. Its peer
      can be written in any language with a binding: Zig, C, C++, Python, C#, Java, Rust, Lua, JavaScript or Go.
   ]],
   homepage = "https://fastipc.github.io/fastipc/",
   issues_url = "https://github.com/fastipc/fastipc/issues",
   license = "MIT",
   maintainer = "Hayden Donnelly",
   labels = { "ipc", "shared-memory", "interprocess", "ffi", "luajit" },
}
supported_platforms = { "linux", "windows", "macosx" }
dependencies = {
   "lua == 5.1",
   "luajit >= 2.1",
}
build = {
   type = "builtin",
   modules = {
      fipc = "fipc.lua",
   },
   -- The library goes next to the C modules, as fipc/<library> on package.cpath, where the module finds it
   platforms = {
      -- Both Linux libraries (LuaRocks picks by OS, not CPU): ARM64's as fipc/arm64/libfastipc.so
      linux = {
         install = { lib = {
            ["fipc.libfastipc"] = "native/linux-x64/libfastipc.so",
            ["fipc.arm64.libfastipc"] = "native/linux-arm64/libfastipc.so",
         } },
      },
      windows = {
         install = { lib = { ["fipc.fastipc"] = "native/win-x64/fastipc.dll" } },
      },
      macosx = {
         install = { lib = { ["fipc.libfastipc"] = "native/osx-arm64/libfastipc.dylib" } },
      },
   },
   copy_directories = { "examples" },
}
