package = 'lunix'
version = '20140819-4'
source = {
  url = 'http://25thandclement.com/~william/projects/releases/lunix-20140819.tgz',
}
dependencies = {
  "lua == 5.1"
}
build = {
  type = 'command',
  build_command = "make all5.1",
  install_command = "make install5.1 lua51cpath='$(LIBDIR)'",
}
