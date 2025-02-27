package = 'luapdfgen'
version = '1.0-1'

rockspec_format = '3.0'

source = {
   url = 'git+https://github.com/mbartlett21/luapdfgen.git',
   tag = 'v1.0',
}
description = {
   summary = 'A PDF generator using pdfgen.c.',
   detailed = [[
      Generate custom PDF files with your own data etc.
   ]],
   homepage = 'http://github.com/mbartlett21/luapdfgen.git',
   license = 'MIT',
}
dependencies = {
   'lua >= 5.3',
}
build = {
   type = 'builtin',
   modules = {
      luapdfgen = { 'luapdfgen.c', 'pdfgen.c' },
   }
}
