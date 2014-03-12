
package = "lua-espeak"
version = "1.36r1-1"

source = {
  url = "http://luaforge.net/frs/download.php/3413/lua-espeak-1.36r1.tar.gz",
  md5 = "2d770aa66264f651e7361e1a82345370"
}

description = {
   summary = "A speech synthesis library for Lua",
   detailed = [[
      Lua-eSpeak is a Lua bindind to eSpeak, a compact open source software speech
      synthesizer for English and several other languages. It produces good quality
      English speech using a different synthesis method from other open source TTS
      engines.
   ]],
   license = "GNU GPL v3",
   homepage = "http://lua-espeak.luaforge.net/",
   maintainer = "Alexandre Erwin Ittner"
}

dependencies = {
   "lua >= 5.1",
}

external_dependencies = {
   ESPEAK = {
      header = "espeak/speak_lib.h"
   }
}

build = {
   type = "make",
   variables = {
      CFLAGS = "-I$(LUA_INCDIR) -I$(ESPEAK_INCDIR) -O3 -Wall",
      LFLAGS = "$(LIBFLAG) -L$(ESPEAK_LIBDIR)",
      LIBS = "-lespeak",
      INSTALL_PATH = "$(LIBDIR)"
   }
}
