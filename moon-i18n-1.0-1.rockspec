package = "moon-i18n"
version = "1.0-1"
source = {
    url = "git://github.com/Annwan/moon-i18n",
    tag = "v1.0"
}
description = {
    summary = "A minimalist internationali(s|z)ation lib for Lua (and Moonscript)",
    homepage = "https://github.com/Annwan/moon-i18n",
    license = "BSD-3-Clause"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        i18n = "i18n.lua"
    }
}

