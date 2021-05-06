package = 'lacord'
version = '1619975269-0'

source = {
     url = "git://github.com/Mehgugs/lacord.git"
    ,tag = "1619975269"
}

local details =
[[lacord is a small discord library providing low level clients for the discord rest and gateway API.
All data is given to the user as raw JSON. The api methods expect ids to be integers (use lacord.util.uint to manipulate them).
Documentation is sparsely provided in the form of LDoc comments which can be processed into a document using LDoc.]]

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
    ,'lua-cjson == 2.1.0-1'
    ,'dkjson'
}

build = {
     type = "builtin"
    ,modules = {}
}