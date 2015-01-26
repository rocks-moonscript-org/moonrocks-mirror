package = 'lunix'
version = '20140819-5'
source = {
  url = 'http://25thandclement.com/~william/projects/releases/lunix-20140819.tgz',
}
build = {
  type = 'command',
  build_command = "make all",
  install_command = "make install5.1 lua51cpath='$(LIBDIR)' lua52cpath='$(LIBDIR)'",
}
