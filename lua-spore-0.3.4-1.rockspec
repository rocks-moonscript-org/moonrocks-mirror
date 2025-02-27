package = 'lua-Spore'
version = '0.3.4-1'
source = {
    url = 'https://framagit.org/fperrad/lua-Spore/raw/releases/lua-spore-0.3.4.tar.gz',
    md5 = '1519ce0ec1569eceec5e953f1e7a57df',
    dir = 'lua-Spore-0.3.4',
}
description = {
    summary = "a generic ReST client",
    detailed = [[
        lua-Spore is a generic ReST client library based on pluggable middlewares,
        which supports various RESTful API Description Languages:
        - SPORE (Specification to a POrtable Rest Environment)
        - Google Discovery Document
        - RAML (RESTful API Modeling Language)
        - Swagger / OpenAPI
        - WADL (Web Application Description Language)
    ]],
    homepage = 'https://fperrad.frama.io/lua-Spore/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'luasocket >= 2.0.2',
--    'luasec >= 0.4',            -- libssl-dev
    'lpeg == 1.0.2',
    'luajson >= 1.3',
--    'luaexpat >= 1.1.0',        -- libexpat1-dev
--    'lyaml >= 5',               -- libyaml-dev
--    'lualogging >= 1.1.4',
--    'luaossl',
--    'lua-testmore >= 0.3.6',            -- test only
--    'lua-testassertion >= 0.2.0',       -- test only
}
build = {
    type = 'builtin',
    modules = {
        ['Spore']                               = 'src/Spore.lua',
        ['Spore.Core']                          = 'src/Spore/Core.lua',
        ['Spore.GoogleDiscovery']               = 'src/Spore/GoogleDiscovery.lua',
        ['Spore.Middleware.Auth.AWS']           = 'src/Spore/Middleware/Auth/AWS.lua',
        ['Spore.Middleware.Auth.Basic']         = 'src/Spore/Middleware/Auth/Basic.lua',
        ['Spore.Middleware.Auth.Bearer']        = 'src/Spore/Middleware/Auth/Bearer.lua',
        ['Spore.Middleware.Auth.DataPublica']   = 'src/Spore/Middleware/Auth/DataPublica.lua',
        ['Spore.Middleware.Auth.Digest']        = 'src/Spore/Middleware/Auth/Digest.lua',
        ['Spore.Middleware.Auth.OAuth']         = 'src/Spore/Middleware/Auth/OAuth.lua',
        ['Spore.Middleware.Cache']              = 'src/Spore/Middleware/Cache.lua',
        ['Spore.Middleware.Cookie.Session']     = 'src/Spore/Middleware/Cookie/Session.lua',
        ['Spore.Middleware.DoNotTrack']         = 'src/Spore/Middleware/DoNotTrack.lua',
        ['Spore.Middleware.Format.JSON']        = 'src/Spore/Middleware/Format/JSON.lua',
        ['Spore.Middleware.Format.XML']         = 'src/Spore/Middleware/Format/XML.lua',
        ['Spore.Middleware.Format.YAML']        = 'src/Spore/Middleware/Format/YAML.lua',
        ['Spore.Middleware.Logging']            = 'src/Spore/Middleware/Logging.lua',
        ['Spore.Middleware.Mock']               = 'src/Spore/Middleware/Mock.lua',
        ['Spore.Middleware.Parameter.Default']  = 'src/Spore/Middleware/Parameter/Default.lua',
        ['Spore.Middleware.Parameter.Force']    = 'src/Spore/Middleware/Parameter/Force.lua',
        ['Spore.Middleware.Proxy.Basic']        = 'src/Spore/Middleware/Proxy/Basic.lua',
        ['Spore.Middleware.Redirection']        = 'src/Spore/Middleware/Redirection.lua',
        ['Spore.Middleware.Runtime']            = 'src/Spore/Middleware/Runtime.lua',
        ['Spore.Middleware.UserAgent']          = 'src/Spore/Middleware/UserAgent.lua',
        ['Spore.Protocols']                     = 'src/Spore/Protocols.lua',
        ['Spore.RAML']                          = 'src/Spore/RAML.lua',
        ['Spore.Request']                       = 'src/Spore/Request.lua',
        ['Spore.Swagger']                       = 'src/Spore/Swagger.lua',
        ['Spore.WADL']                          = 'src/Spore/WADL.lua',
        ['Spore.XML']                           = 'src/Spore/XML.lua',
    },
    install = {
        bin = {
            'src/discovery2spore',
            'src/raml2spore',
            'src/swagger2spore',
            'src/wadl2spore',
        }
    },
    copy_directories = { 'docs', 'test' },
}
