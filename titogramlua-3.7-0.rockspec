package = "titogramlua"
version = "3.7-0"
source = {
    url = "https://github.com/titoo00/titogramlua/archive/refs/tags/v3.7.tar.gz",
    dir = "titogramlua-3.7"
}
description = {
    summary = "A feature-filled Telegram bot API library",
    detailed = "A feature-filled Telegram bot API library written in Lua, with Bot API 10.1 support.",
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
    type = "builtin",
    modules = {
        ["titogramlua"] = "src/main.lua",
        ["titogramlua.config"] = "src/config.lua",
        ["titogramlua.middleware"] = "src/middleware.lua",
        ["titogramlua.handlers"] = "src/handlers.lua",
        ["titogramlua.builders"] = "src/builders.lua",
        ["titogramlua.builders_rich"] = "src/builders_rich.lua",
        ["titogramlua.helpers"] = "src/helpers.lua",
        ["titogramlua.tools"] = "src/tools.lua",
        ["titogramlua.utils"] = "src/utils.lua",
        ["titogramlua.mcp"] = "src/mcp.lua",
        ["titogramlua.compat"] = "src/compat.lua",
        ["titogramlua.core"] = "src/core.lua",
        ["titogramlua.polyfill"] = "src/polyfill.lua",
        ["titogramlua.async"] = "src/async.lua",
        ["titogramlua.b64url"] = "src/b64url.lua",
        ["titogramlua.methods.updates"] = "src/methods/updates.lua",
        ["titogramlua.methods.messages"] = "src/methods/messages.lua",
        ["titogramlua.methods.chat"] = "src/methods/chat.lua",
        ["titogramlua.methods.members"] = "src/methods/members.lua",
        ["titogramlua.methods.forum"] = "src/methods/forum.lua",
        ["titogramlua.methods.stickers"] = "src/methods/stickers.lua",
        ["titogramlua.methods.inline"] = "src/methods/inline.lua",
        ["titogramlua.methods.payments"] = "src/methods/payments.lua",
        ["titogramlua.methods.games"] = "src/methods/games.lua",
        ["titogramlua.methods.passport"] = "src/methods/passport.lua",
        ["titogramlua.methods.bot"] = "src/methods/bot.lua",
        ["titogramlua.methods.gifts"] = "src/methods/gifts.lua",
        ["titogramlua.methods.checklists"] = "src/methods/checklists.lua",
        ["titogramlua.methods.stories"] = "src/methods/stories.lua",
        ["titogramlua.methods.suggested_posts"] = "src/methods/suggested_posts.lua",
        ["titogramlua.methods.rich"] = "src/methods/rich.lua",
        ["titogramlua.adapters"] = "src/adapters/init.lua",
        ["titogramlua.adapters.db"] = "src/adapters/db.lua",
        ["titogramlua.adapters.redis"] = "src/adapters/redis.lua",
        ["titogramlua.adapters.llm"] = "src/adapters/llm.lua",
        ["titogramlua.adapters.email"] = "src/adapters/email.lua"
    },
    install = {
        bin = {
            tgbot = "bin/tgbot"
        }
    }
}
