package = "luuid"
version = "20120509-2"
source = {
   url = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/5.2/luuid.tar.gz",
   md5 = "cd6c758f163b41b27a76b3d57cf730fd",
   dir = "uuid"
}
description = {
   summary = "A library for UUID generation",
   detailed = [[
      A library for generating universally unique identifiers based on
      libuuid, which is part of e2fsprogs.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~lhf/ftp/lua/#luuid",
   license = "Public domain"
}
dependencies = {
   "lua >= 5.2, < 5.4"
}
external_dependencies = {
   platforms = {
      unix = {
         LIBUUID = {
            header = "uuid/uuid.h",
            library = "libuuid.so"
         }
      }
   }
}
build = {
   type = "builtin",
   platforms = {
      win32 = {
         modules = {
            uuid = {
               libraries = {
                  "rpcrt4",
               },
               sources = {
                  "luuid.c",
                  "wuuid.c",
               }
            }
         }
      },
      unix = {
         modules = {
            uuid = {
               libraries = {
                  "uuid", 
               },
               sources = {
                  "luuid.c",
               }
            }
         }
      }
   }
}
