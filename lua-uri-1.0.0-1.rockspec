package = "lua-uri"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/Tekenlight/lua-uri",
   tag = "v1.0.0"
}
description = {
   summary = "This is a fork of the original https://github.com/LuaDist/lua-uri adopted for lua 5.3. The Lua-URI library is written in pure Lua.",
   detailed = [[
The Lua-URI library is written in pure Lua.  No C compilation is required
to install it.]],
   homepage = "https://github.com/Tekenlight/lua-uri",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3",
}
build = {
   type = "builtin",
   modules = {
      compat_env = "compat_env.lua",
      lunit = "lunit.lua",
      ["test._generic"] = "test/_generic.lua",
      ["test._pristine"] = "test/_pristine.lua",
      ["test._relative"] = "test/_relative.lua",
      ["test._resolve"] = "test/_resolve.lua",
      ["test._util"] = "test/_util.lua",
      ["test.data"] = "test/data.lua",
      ["test.file"] = "test/file.lua",
      ["test.ftp"] = "test/ftp.lua",
      ["test.http"] = "test/http.lua",
      ["test.pop"] = "test/pop.lua",
      ["test.rtsp"] = "test/rtsp.lua",
      ["test.telnet"] = "test/telnet.lua",
      ["test.urn"] = "test/urn.lua",
      ["test.urn-isbn"] = "test/urn-isbn.lua",
      ["test.urn-issn"] = "test/urn-issn.lua",
      ["test.urn-oid"] = "test/urn-oid.lua",
      uri = "uri.lua",
      ["uri-test"] = "uri-test.lua",
      ["uri._login"] = "uri/_login.lua",
      ["uri._relative"] = "uri/_relative.lua",
      ["uri._util"] = "uri/_util.lua",
      ["uri.data"] = "uri/data.lua",
      ["uri.file"] = "uri/file.lua",
      ["uri.file.unix"] = "uri/file/unix.lua",
      ["uri.file.win32"] = "uri/file/win32.lua",
      ["uri.ftp"] = "uri/ftp.lua",
      ["uri.http"] = "uri/http.lua",
      ["uri.https"] = "uri/https.lua",
      ["uri.pop"] = "uri/pop.lua",
      ["uri.rtsp"] = "uri/rtsp.lua",
      ["uri.rtspu"] = "uri/rtspu.lua",
      ["uri.telnet"] = "uri/telnet.lua",
      ["uri.urn"] = "uri/urn.lua",
      ["uri.urn.isbn"] = "uri/urn/isbn.lua",
      ["uri.urn.issn"] = "uri/urn/issn.lua",
      ["uri.urn.oid"] = "uri/urn/oid.lua"
   },
   copy_directories = {
      "doc"
   }
}
