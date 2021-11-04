package = 'ezenv'
version = '1.1-0'
rockspec_format = '3.0'
supported_platforms = {'linux'}
source = {
   url = 'git+https://gitlab.com/jessieh/ezenv',
   tag = '1.1-0'
}
description = {
   summary = 'Easily load config values from environment variables.',
   detailed = 'ezenv provides an easy way to load configuration profiles from environment variables.',
   homepage = 'https://gitlab.com/jessieh/ezenv',
   maintainer = 'Jessie Hildebrandt <jessieh@jessieh.net>',
   license = 'GPLv3'
}
dependencies = {
   'lua >= 5.1',
}
test = {
   type = 'busted'
}
test_dependencies = {
   'busted = 2.0.0-1',
   'luacov = 0.15.0-1'
}
build = {
   type = 'make',
   makefile = 'Makefile',
   build_variables = {
      -- This suppresses luarocks' CFLAGS warning-- we don't actually use this
      CFLAGS = '$(CFLAGS)'
   },
   install = {
      lua = {
         ['ezenv'] = 'build/ezenv.lua',
      }
   }
}
