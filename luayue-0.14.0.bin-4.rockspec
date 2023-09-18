package = "luayue"
version = "0.14.0.bin-4"
source = {
   url = "git+https://github.com/Frityet/luayue",
   tag = "v0.14.0-4-bin",
   branch = "main"
}
description = {
   detailed = "Binary releases for yue",
   homepage = "https://github.com/yue/yue",
   license = "LGPLv3"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "command",
   platforms = {
      macosx = {
         build_command = "'$(LUA)' install.lua download mac \"CURL=$(CURL)\" \"YUE_VERSION=0.14.0\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" ",
         install_command = "'$(LUA)' install.lua install mac \"CURL=$(CURL)\" \"YUE_VERSION=0.14.0\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" "
      },
      mingw32 = {
         build_command = "cmd /c '$(LUA)' install.lua download win \"CURL=$(CURL)\" \"YUE_VERSION=0.14.0\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" ",
         install_command = "cmd /c '$(LUA)' install.lua install win \"CURL=$(CURL)\" \"YUE_VERSION=0.14.0\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" "
      },
      unix = {
         build_command = "'$(LUA)' install.lua download linux \"CURL=$(CURL)\" \"YUE_VERSION=0.14.0\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" ",
         install_command = "'$(LUA)' install.lua install linux \"CURL=$(CURL)\" \"YUE_VERSION=0.14.0\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" "
      },
      win32 = {
         build_command = "cmd /c '$(LUA)' install.lua download win \"CURL=$(CURL)\" \"YUE_VERSION=0.14.0\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" ",
         install_command = "cmd /c '$(LUA)' install.lua install win \"CURL=$(CURL)\" \"YUE_VERSION=0.14.0\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" "
      }
   }
}
