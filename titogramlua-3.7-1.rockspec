package = "titogramlua"
version = "3.7-1"
source = {
    url = "git+https://github.com/titoo00/titogramlua.git",
    tag = "v3.7-1"
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
        ["titogramlua.adapters.db"] = "src/adapters/db.lua",
        ["titogramlua.adapters.email"] = "src/adapters/email.lua",
        ["titogramlua.adapters"] = "src/adapters/init.lua",
        ["titogramlua.adapters.llm"] = "src/adapters/llm.lua",
        ["titogramlua.adapters.redis"] = "src/adapters/redis.lua",
        ["titogramlua.async"] = "src/async.lua",
        ["titogramlua.b64url"] = "src/b64url.lua",
        ["titogramlua.builders"] = "src/builders.lua",
        ["titogramlua.builders_rich"] = "src/builders_rich.lua",
        ["titogramlua.compat"] = "src/compat.lua",
        ["titogramlua.config"] = "src/config.lua",
        ["titogramlua.core"] = "src/core.lua",
        ["titogramlua.framework"] = "src/framework.lua",
        ["titogramlua.handlers"] = "src/handlers.lua",
        ["titogramlua.helpers"] = "src/helpers.lua",
        ["titogramlua.log"] = "src/log.lua",
        ["titogramlua"] = "src/main.lua",
        ["titogramlua.mcp"] = "src/mcp.lua",
        ["titogramlua.methods.bot"] = "src/methods/bot.lua",
        ["titogramlua.methods.business"] = "src/methods/business.lua",
        ["titogramlua.methods.chat"] = "src/methods/chat.lua",
        ["titogramlua.methods.checklists"] = "src/methods/checklists.lua",
        ["titogramlua.methods.forum"] = "src/methods/forum.lua",
        ["titogramlua.methods.games"] = "src/methods/games.lua",
        ["titogramlua.methods.gifts"] = "src/methods/gifts.lua",
        ["titogramlua.methods.inline"] = "src/methods/inline.lua",
        ["titogramlua.methods.members"] = "src/methods/members.lua",
        ["titogramlua.methods.messages"] = "src/methods/messages.lua",
        ["titogramlua.methods.passport"] = "src/methods/passport.lua",
        ["titogramlua.methods.payments"] = "src/methods/payments.lua",
        ["titogramlua.methods.rich"] = "src/methods/rich.lua",
        ["titogramlua.methods.stickers"] = "src/methods/stickers.lua",
        ["titogramlua.methods.stories"] = "src/methods/stories.lua",
        ["titogramlua.methods.updates"] = "src/methods/updates.lua",
        ["titogramlua.middleware"] = "src/middleware.lua",
        ["titogramlua.polyfill"] = "src/polyfill.lua",
        ["titogramlua.session"] = "src/session.lua",
        ["titogramlua.tools"] = "src/tools.lua",
        ["titogramlua.utils"] = "src/utils.lua",
        ["titogramlua.webhook"] = "src/webhook.lua",
    },
    install = {
        bin = {
            tgbot = "bin/tgbot"
        }
    }
}
