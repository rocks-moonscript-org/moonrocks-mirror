package = "titogramlua"
version = "3.7.2-1"
source = {
    url = "git+https://github.com/titoo00/titogramlua.git",
    branch = "main"
}
description = {
    summary = "A feature-filled Telegram bot API library",
    detailed = "A feature-filled Telegram bot API library written in Lua, with Bot API 10.3 support and an optional TDLib-backed user-account client.",
    homepage = "https://github.com/titoo00/titogramlua",
    maintainer = "Yousef Hesham <linkedin.com/in/yosef-hesham-485ab0440>",
    license = "GPL-3"
}
supported_platforms = {
    "linux",
    "macosx",
    "unix",
    "bsd"
}
dependencies = {
    "lua >= 5.1",
    "dkjson >= 2.5-2",
    "luasec >= 0.6-1",
    "luasocket >= 3.0rc1-2",
    "multipart-post >= 1.1-1",
    "luautf8 >= 0.1.1-1",
    "copas >= 4.0"
}
build = {
    type = "command",
    build_command = "true",
    install_command = "mkdir -p '$(LUADIR)/titogramlua' '$(BINDIR)' && cp src/main.lua '$(LUADIR)/titogramlua.lua' && cp -R src/* '$(LUADIR)/titogramlua/' && rm -f '$(LUADIR)/titogramlua/main.lua' && cp bin/tgbot '$(BINDIR)/tgbot' && chmod +x '$(BINDIR)/tgbot'"
}