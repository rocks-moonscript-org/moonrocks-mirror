package = 'lacord'
version = '1629838555-0'

source = {
    url = "git+https://github.com/Mehgugs/lacord.git",
    tag = "1629838555"
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
    ,'lua-cjson-219'
    ,'dkjson'
    ,'luatweetnacl'
    ,'inspect'
}

build = {
     type = "builtin"
    ,modules = {
        ["lacord.util.archp"] = "src/archp.c"
    }
}