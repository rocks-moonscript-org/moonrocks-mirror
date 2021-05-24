package = "tqdm-lua"
version = "1.0-2"
source = {
   url = "git://github.com/Nepta/tqdm-lua",
   tag = "v1.0-2"
}

description = {
   homepage = "https://github.com/Nepta/tqdm-lua",
   license = "MIT",
   detailed = [[
      (unofficial) tqdm-like lua pretty progress bar
   ]]
}

build = {
   type = "make",
   modules = {
      tqdm = "tqdm.cpp"
   },
   variables = {
      CC = "$(CC)",
      CFLAGS = "$(CFLAGS)",
      LIBFLAG = "$(LIBFLAG)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LIBDIR = "$(LIBDIR)"
   },
   install = {
      lib = { ["tqdm"] = "tqdm.so" }
   }
}
