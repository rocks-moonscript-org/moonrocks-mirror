package = 'lacord'
version = '1637789515-0'

source = {
    url = "git+https://github.com/Mehgugs/lacord.git",
    tag = "1637789515"
}

local details =
[[lacord is a small discord library providing low level clients for the discord rest and gateway API.
  Check out https://github.com/Mehgugs/lacord-client for a higher level wrapper over this project.]]

description = {
    summary = 'A low level, lightweight discord API library.'
    ,homepage = "https://github.com/Mehgugs/lacord"
    ,license = 'MIT'
    ,maintainer = 'Magicks <m4gicks@gmail.com>'
    ,detailed = details
}

dependencies = {
     'lua >= 5.3'
    ,'cqueues'
    ,'http'
    ,'lua-zlib'
    ,'lua-cjson-219'
    ,'dkjson'
    ,'luatweetnacl'
    ,'inspect'
}

build = {
     type = "builtin"
    ,modules = {
        ["lacord.util.archp"] = "src/archp.c",
        ["lacord.cli"] = "lua/lacord/util/cli_default.lua",
        ["acord"] = "lua/lacord/util/cli_auto.lua"
    }
}