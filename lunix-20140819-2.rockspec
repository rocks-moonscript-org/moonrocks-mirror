package = 'lunix'
version = '20140819-2'
source = {
  url = 'http://25thandclement.com/~william/projects/releases/lunix-20140819.tgz',
}
dependencies = {
  "lua == 5.2"
}
build = {
  type = 'command',
  build_command = "make all5.2",
  install_command = "make install5.2 lua52cpath='$(LIBDIR)'",
}
