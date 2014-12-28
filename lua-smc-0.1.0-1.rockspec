package = 'lua-Smc'
version = '0.1.0-1'
source = {
    url = 'http://sites.google.com/site/fperrad/lua-smc-0.1.0.tar.gz',
    md5 = '319ef631bd8dc7986a71d6b1535b757a',
    dir = 'lua-Smc-0.1.0',
}
description = {
    summary = "the State Machine Compiler",
    detailed = [[
        lua-Smc is an experimental port of SMC (http://smc.sourceforge.net/).
    ]],
    homepage = 'http://smc.sourceforge.net/',
    maintainer = 'Francois Perrad',
    license = 'MIT'
}
dependencies = {
    'lua >= 5.1',
    'lua-coat >= 0.9.0',
    'lua-codegen >= 0.3.0',
}
build = {
    type = 'builtin',
    modules = {
        ['Smc']                 = 'src/Smc.lua',
        ['Smc.Checker']         = 'src/Smc/Checker.lua',
        ['Smc.Dumper']          = 'src/Smc/Dumper.lua',
        ['Smc.Generator']       = 'src/Smc/Generator.lua',
        ['Smc.Language']        = 'src/Smc/Language.lua',
        ['Smc.Model']           = 'src/Smc/Model.lua',
        ['Smc.OperationalModel']= 'src/Smc/OperationalModel.lua',
        ['Smc.Parser']          = 'src/Smc/Parser.lua',
        ['Smc.Parser.Lexer_sm'] = 'src/Smc/Parser/Lexer_sm.lua',
        ['Smc.Parser.Parser_sm']= 'src/Smc/Parser/Parser_sm.lua',
        -- languages
        ['Smc.C']               = 'src/Smc/C.lua',
        ['Smc.Cpp']             = 'src/Smc/Cpp.lua',
--        ['Smc.Csharp']          = 'src/Smc/Csharp.lua',
        ['Smc.Graphviz']        = 'src/Smc/Graphviz.lua',
        ['Smc.Groovy']          = 'src/Smc/Groovy.lua',
        ['Smc.Java']            = 'src/Smc/Java.lua',
        ['Smc.JavaScript']      = 'src/Smc/JavaScript.lua',
        ['Smc.Lua']             = 'src/Smc/Lua.lua',
--        ['Smc.ObjC']            = 'src/Smc/ObjC.lua',
--        ['Smc.Ooc']             = 'src/Smc/Ooc.lua',
        ['Smc.Perl']            = 'src/Smc/Perl.lua',
        ['Smc.Php']             = 'src/Smc/Php.lua',
        ['Smc.Python']          = 'src/Smc/Python.lua',
        ['Smc.Ruby']            = 'src/Smc/Ruby.lua',
        ['Smc.Scala']           = 'src/Smc/Scala.lua',
        ['Smc.Table']           = 'src/Smc/Table.lua',
--        ['Smc.Tcl']             = 'src/Smc/Tcl.lua',
--        ['Smc.Vb']              = 'src/Smc/Vb.lua',
        -- runtime
        ['statemap']            = 'runtime/lua/statemap.lua',
    },
    install = {
        bin = { 'bin/smc' }
    },
    copy_directories = { 'eg', 'test'},
}
