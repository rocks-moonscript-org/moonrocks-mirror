package = "qoleng"
version = "1.1-1"

source = {
   url = "https://github.com/winslygeorge/dawn/archive/master.zip",
   dir = "dawn-master"
}

description = {
   summary = "🌄 Qoleng Framework Overview",
   detailed = [[
      Qoleng is a modular, async-capable Lua web framework inspired by Phoenix and Express.
   ]],
   license = "MIT"
}

dependencies = {
   "luv",
   "uwebsockets",
   "dkjson",
   "net-url",
   "lustache",
   "lua-zlib"
}

build = {
   type = "command",
   build_command = [[
      chmod +x build.sh
      make clean
      make all
   ]],
   install = {
      lua = {
         ["layout.renderer.layout_model"]             = "build/qoleng/layout/renderer/layout_model.lua",
         ["layout.renderer.lustache_renderer"]        = "build/qoleng/layout/renderer/lustache_renderer.lua",
         ["layout.renderer.Controller"]               = "build/qoleng/layout/renderer/Controller.lua",
         ["layout.renderer.FuncComponent"]            = "build/qoleng/layout/renderer/FuncComponent.lua",
         ["layout.renderer.MustacheHTMLBuilder"]      = "build/qoleng/layout/renderer/MustacheHTMLBuilder.lua",
         ["layout.renderer.HTML_Enums"]               = "build/qoleng/layout/renderer/HTML_Enums.lua",
         ["layout.renderer.Reverse_HTML_LuaTable"]    = "build/qoleng/layout/renderer/Reverse_HTML_LuaTable.lua",
         ["layout.renderer.LuaHTMLReactive"]          = "build/qoleng/layout/renderer/LuaHTMLReactive.lua",

         ["qoleng"]                                     = "build/qoleng/qoleng.lua",
         ["auth.refresh_handler"]                     = "build/qoleng/server/auth/refresh_handler.lua",
         ["auth.purejwt"]                             = "build/qoleng/server/auth/purejwt.lua",
         ["auth.jwt_protect"]                         = "build/qoleng/server/auth/jwt_protect.lua",
         ["auth.token_cleaner"]                       = "build/qoleng/server/auth/token_cleaner.lua",
         ["auth.sha256"]                              = "build/qoleng/server/auth/sha256.lua",
         ["auth.logout_handler"]                      = "build/qoleng/server/auth/logout_handler.lua",
         ["auth.rate_limiting_middleware"]            = "build/qoleng/server/auth/rate_limiting_middleware.lua",
         ["auth.token_store"]                         = "build/qoleng/server/auth/token_store.lua",
         ["auth.session_middleware"]                  = "build/qoleng/server/auth/session_middleware.lua",
         ["multipart_parser"]                         = "build/qoleng/server/multipart_parser.lua",
         ["qoleng_server"]                              = "build/qoleng/server/qoleng_server.lua",
         ["qoleng_sockets"]                             = "build/qoleng/server/qoleng_sockets.lua",
         ["websockets.presence_interface"]            = "build/qoleng/server/websockets/presence_interface.lua",
         ["utils.query_extractor"]                    = "build/qoleng/utils/query_extractor.lua",
         ["utils.queue"]                              = "build/qoleng/utils/queue.lua",
         ["utils.css_helper"]                         = "build/qoleng/utils/css_helper.lua",
         ["utils.log_level"]                          = "build/qoleng/utils/log_level.lua",
         ["utils.base64"]                             = "build/qoleng/utils/base64.lua",
         ["utils.linkedlist"]                         = "build/qoleng/utils/linkedlist.lua",
         ["utils.fibheap"]                            = "build/qoleng/utils/fibheap.lua",
         ["utils.promise"]                            = "build/qoleng/utils/promise.lua",
         ["utils.set"]                                = "build/qoleng/utils/set.lua",
         ["utils.logger"]                             = "build/qoleng/utils/logger.lua",
         ["utils.patch_queue"]                        = "build/qoleng/utils/patch_queue.lua",
         ["utils.server_patch_queue"]                 = "build/qoleng/utils/server_patch_queue.lua",
         ["utils.patchStreamer"]                      = "build/qoleng/utils/patchStreamer.lua",
         ["utils.query_filter_parser"]                = "build/qoleng/utils/query_filter_parser.lua",
         ["utils.component_patcher"]                  = "build/qoleng/utils/component_patcher.lua",
         ["runtime.scheduler"]                        = "build/qoleng/runtime/scheduler.lua",
         ["runtime.loop"]                             = "build/qoleng/runtime/loop.lua",
         ["utils.uuid"]                               = "build/qoleng/utils/uuid.lua",
         ["utils.QolengWatcher"]                        = "build/qoleng/utils/QolengWatcher.lua",
         ["utils.try"]                                = "build/qoleng/utils/try.lua",
         ["utils.HTML_Parser"]                        = "build/qoleng/utils/HTML_Parser.lua"
      }
   }
}
