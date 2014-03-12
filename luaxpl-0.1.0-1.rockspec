package = "luaxpl"
version = "0.1.0-1"
source = {
    url = "https://github.com/downloads/Tieske/LuaxPL/luaxpl-0.1.0.tar.gz",
}
description = {
    summary = "xPL framework for Lua",
    detailed = [[
      xPL is an open source home automation protocol. LuaxPL provides
      all the basic ingredients for building your own xPL applications.
      Additionally it includes commandline utilities to send
      and log xPL traffic. A device template is included and the
      commandline utilities can be used as examples to quickly get up
      and running. One application is included to detect occupancy of
      a home based on smartphone detection (network connections).
      See http://xplproject.org.uk for more information on xPL.
    ]],
    license = "MIT/X11",
    homepage = "http://www.thijsschreijer.nl/blog/?page_id=537"
}
dependencies = {
    "copas >= 1.1.6",   -- this should be 1.1.7 or higher, but isn't released yet !!
    "luasocket >= 2.0.0",
    "copastimer >= 0.4.0",
    "date >= 2.0.0",
}
build = {
    type = "builtin",
    modules = {
        -- core modules
        ["xpl.init"]                = "src/xpl/init.lua",
        ["xpl.new_device_template"] = "src/xpl/new_device_template.lua",
        ["xpl.xplhub"]              = "src/xpl/xplhub.lua",
        ["xpl.xpllistener"]         = "src/xpl/xpllistener.lua",
        -- classes
        ["xpl.classes.base"]        = "src/xpl/classes/base.lua",
        ["xpl.classes.xpldevice"]   = "src/xpl/classes/xpldevice.lua",
        ["xpl.classes.xplfilter"]   = "src/xpl/classes/xplfilter.lua",
        ["xpl.classes.xplmessage"]  = "src/xpl/classes/xplmessage.lua",
        -- commandline utilities
        ["xpllogger"]               = "src/xpllogger.lua",
        ["xplsender"]               = "src/xplsender.lua",
        ["xplnetpresence"]          = "src/xplnetpresence.lua",
        ["xplrun"]                  = "src/xplrun.lua",
        ["xplrun_config"]           = "src/xplrun_config.lua",
    },
    copy_directories = { "doc", "test" },
}
