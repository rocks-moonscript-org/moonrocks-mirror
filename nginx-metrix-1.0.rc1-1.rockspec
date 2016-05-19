package = 'nginx-metrix'
version = '1.0.rc1-1'
source = {
  url = 'https://github.com/bankiru/nginx-metrix/archive/v1.0-rc1.tar.gz',
  dir = 'nginx-metrix-1.0-rc1'
}
description = {
  summary    = 'Extended Nginx status and metrics.',
  detailed   = [[Extended Nginx status and metrics.]],
  homepage   = 'https://github.com/bankiru/nginx-metrix/',
  license    = 'MIT <http://opensource.org/licenses/MIT>',
  maintainer = 'Boris Gorbylev <ekho@ekho.name>',
}
dependencies = {
  'lua ~> 5.1',
  'lua-cjson >= 2.1',
  'fun-alloyed >= 0.1.3',
  'inspect >= 3.1.0',
  'lust >= 0.1',
}

build = {
  type = "builtin",
  modules = {
    ['nginx-metrix.main']                              = 'nginx-metrix/main.lua',

    ['nginx-metrix.collectors']                        = 'nginx-metrix/collectors.lua',
    ['nginx-metrix.listener']                          = 'nginx-metrix/listener.lua',
    ['nginx-metrix.logger']                            = 'nginx-metrix/logger.lua',
    ['nginx-metrix.scheduler']                         = 'nginx-metrix/scheduler.lua',
    ['nginx-metrix.version']                           = 'nginx-metrix/version.lua',

    ['nginx-metrix.lib.is']                            = 'nginx-metrix/lib/is.lua',
    ['nginx-metrix.lib.json']                          = 'nginx-metrix/lib/json.lua',

    ['nginx-metrix.collectors.request']                = 'nginx-metrix/collectors/request.lua',
    ['nginx-metrix.collectors.status']                 = 'nginx-metrix/collectors/status.lua',
    ['nginx-metrix.collectors.upstream']               = 'nginx-metrix/collectors/upstream.lua',

    ['nginx-metrix.output.helper']                     = 'nginx-metrix/output/helper.lua',
    ['nginx-metrix.output.renderer']                   = 'nginx-metrix/output/renderer.lua',

    ['nginx-metrix.storage.collector_wrapper_factory'] = 'nginx-metrix/storage/collector_wrapper_factory.lua',
    ['nginx-metrix.storage.dict']                      = 'nginx-metrix/storage/dict.lua',
    ['nginx-metrix.storage.helper']                    = 'nginx-metrix/storage/namespaces.lua',
    ['nginx-metrix.storage.renderer']                  = 'nginx-metrix/storage/serializer.lua',
  },
}
