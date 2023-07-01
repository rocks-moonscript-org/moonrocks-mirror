package = "luayue-bin"
version = "0.13.13-7"
source = {
   url = "git+https://github.com/Frityet/luayue",
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
         build_command = "'$(LUA)' install.lua build mac \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" ",
         install_command = "'$(LUA)' install.lua install mac \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" "
      },
      mingw32 = {
         build_command = "cmd /c '$(LUA)' install.lua build win \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" ",
         install_command = "cmd /c '$(LUA)' install.lua install win \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" "
      },
      unix = {
         build_command = "'$(LUA)' install.lua build linux \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" ",
         install_command = "'$(LUA)' install.lua install linux \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" "
      },
      win32 = {
         build_command = "cmd /c '$(LUA)' install.lua build win \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" ",
         install_command = "cmd /c '$(LUA)' install.lua install win \"LUA=$(LUA)\" \"CURL=$(CURL)\" \"YUE_VERSION=latest\" \"INST_LIBDIR=$(LIBDIR)\" \"WGET=$(WGET)\" \"TAR=$(TAR)\" \"UNZIP=$(UNZIP)\" "
      }
   }
}
