package = "luluman"
version = "1.0-1"
source = {
   url = "git://github.com/luluworlds/luluman",
   tag = "1.0-1"
}
build = {
   type = "builtin",
   modules = {
      huffman = "huffman.c"
   }
}
