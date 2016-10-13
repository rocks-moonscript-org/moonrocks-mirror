package = "babel"
version = "1.4-0"
source = {
    url = "https://github.com/martin-damien/babel/archive/v1.4-0.zip",
    dir = "babel-1.4-0"
}
description = {
    summary = "A simple internationalisation module",
    detailed = [[
        A simple internationalisation module to allow Lua developments to be
        multilingual. It also supports LÖVE (https://www.love2d.org/).
    ]],
    homepage = "http://github.com/martin-damien/babel",
    license = "MIT"
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
        ["locales.ar_SA"] = "locales/ar_SA.lua",
        ["locales.ca_ES"] = "locales/ca_ES.lua",
        ["locales.cz_CZ"] = "locales/cz_CZ.lua",
        ["locales.da_DK"] = "locales/da_DK.lua",
        ["locales.de_DE"] = "locales/de_DE.lua",
        ["locales.el_EL"] = "locales/el_EL.lua",
        ["locales.en_AU"] = "locales/en_AU.lua",
        ["locales.en_CA"] = "locales/en_CA.lua",
        ["locales.en_NZ"] = "locales/en_NZ.lua",
        ["locales.en_UK"] = "locales/en_UK.lua",
        ["locales.en_US"] = "locales/en_US.lua",
        ["locales.eo_EO"] = "locales/eo_EO.lua",
        ["locales.es_ES"] = "locales/es_ES.lua",
        ["locales.fi_FI"] = "locales/fi_FI.lua",
        ["locales.fr_FR"] = "locales/fr_FR.lua",
        ["locales.he_IL"] = "locales/he_IL.lua",
        ["locales.hi_IN"] = "locales/hi_IN.lua",
        ["locales.hr_HR"] = "locales/hr_HR.lua",
        ["locales.hu_HU"] = "locales/hu_HU.lua",
        ["locales.id_ID"] = "locales/id_ID.lua",
        ["locales.it_IT"] = "locales/it_IT.lua",
        ["locales.jp_JP"] = "locales/jp_JP.lua",
        ["locales.ko_KR"] = "locales/ko_KR.lua",
        ["locales.nl_NL"] = "locales/nl_NL.lua",
        ["locales.no_NO"] = "locales/no_NO.lua",
        ["locales.pl_PL"] = "locales/pl_PL.lua",
        ["locales.pt_BR"] = "locales/pt_BR.lua",
        ["locales.ru_RU"] = "locales/ru_RU.lua",
        ["locales.se_SE"] = "locales/se_SE.lua",
        ["locales.sk_SK"] = "locales/sk_SK.lua",
        ["locales.sr_SR"] = "locales/sr_SR.lua",
        ["locales.tr_TR"] = "locales/tr_TR.lua",
        ["locales.uk_UA"] = "locales/uk_UA.lua",
        ["locales.zh_CN"] = "locales/zh_CN.lua",
        ["locales.zh_HK"] = "locales/zh_HK.lua",
        ["locales.zh_TW"] = "locales/zh_TW.lua",

    },
    copy_directories = { "tests" }
}
