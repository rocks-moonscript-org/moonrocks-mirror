package = "babel"
version = "1.2-1"
source = {
    url = "https://github.com/martin-damien/babel/archive/v1.2.zip"
}
description = {
    summary = "A simple internationalisation module",
    detailed = [[
        A simple internationalisation module to allow Lua developments to be
        multilingual. It also supports LÖVE (https://www.love2d.org/).
    ]],
    homepage = "http://github.com/martin-damien/babel",
    license = "GNU/GPL 3"
}
dependencies = {
    "lua >= 5.1",
    "luafilesystem >= 1.6.0"
}
build = {
    type = "builtin",
    modules = {

        babel = "babel.lua",

        -- Each local have to be added manualy here
        ["locales.ar-SA"] = "locales/ar-SA.lua",
        ["locales.ca-ES"] = "locales/ca-ES.lua",
        ["locales.cz-CZ"] = "locales/cz-CZ.lua",
        ["locales.da-DK"] = "locales/da-DK.lua",
        ["locales.de-DE"] = "locales/de-DE.lua",
        ["locales.el-EL"] = "locales/el-EL.lua",
        ["locales.en-AU"] = "locales/en-AU.lua",
        ["locales.en-CA"] = "locales/en-CA.lua",
        ["locales.en-NZ"] = "locales/en-NZ.lua",
        ["locales.en-UK"] = "locales/en-UK.lua",
        ["locales.en-US"] = "locales/en-US.lua",
        ["locales.eo-EO"] = "locales/eo-EO.lua",
        ["locales.es-ES"] = "locales/es-ES.lua",
        ["locales.fi-FI"] = "locales/fi-FI.lua",
        ["locales.fr-FR"] = "locales/fr-FR.lua",
        ["locales.he-IL"] = "locales/he-IL.lua",
        ["locales.hi-IN"] = "locales/hi-IN.lua",
        ["locales.hr-HR"] = "locales/hr-HR.lua",
        ["locales.hu-HU"] = "locales/hu-HU.lua",
        ["locales.id-ID"] = "locales/id-ID.lua",
        ["locales.it-IT"] = "locales/it-IT.lua",
        ["locales.jp-JP"] = "locales/jp-JP.lua",
        ["locales.ko-KR"] = "locales/ko-KR.lua",
        ["locales.nl-NL"] = "locales/nl-NL.lua",
        ["locales.no-NO"] = "locales/no-NO.lua",
        ["locales.pl-PL"] = "locales/pl-PL.lua",
        ["locales.pt-BR"] = "locales/pt-BR.lua",
        ["locales.ru-RU"] = "locales/ru-RU.lua",
        ["locales.se-SE"] = "locales/se-SE.lua",
        ["locales.sk-SK"] = "locales/sk-SK.lua",
        ["locales.sr-SR"] = "locales/sr-SR.lua",
        ["locales.tr-TR"] = "locales/tr-TR.lua",
        ["locales.uk-UA"] = "locales/uk-UA.lua",
        ["locales.zh-CN"] = "locales/zh-CN.lua",
        ["locales.zh-HK"] = "locales/zh-HK.lua",
        ["locales.zh-TW"] = "locales/zh-TW.lua",

    },
    copy_directories = { "tests" }
}
