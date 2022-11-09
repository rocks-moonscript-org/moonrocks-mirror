rockspec_format = "3.0"
package = "tgbot"
version = "0.1.0-1"
source = {
   url = "git+https://gitlab.com/ochaton/tgbot.git",
   tag = "0.1.0"
}
description = {
   summary = "Tarantool library to build Telegram bots",
   homepage = "https://gitlab.com/ochaton/tgbot",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1",
   "metaclass"
}
build = {
   type = "builtin",
   modules = {
      ["tg.api"] = "tg/api/init.lua",
      ["tg.api.editMessageText"] = "tg/api/editMessageText.lua",
      ["tg.api.getUpdates"] = "tg/api/getUpdates.lua",
      ["tg.api.response"] = "tg/api/response.lua",
      ["tg.api.sendMessage"] = "tg/api/sendMessage.lua",
      ["tg.bot"] = "tg/bot.lua",
      ["tg.ev"] = "tg/ev.lua",
      ["tg.fpool"] = "tg/fpool.lua",
      ["tg.model.CallbackQuery"] = "tg/model/CallbackQuery.lua",
      ["tg.model.Chat"] = "tg/model/Chat.lua",
      ["tg.model.InlineQuery"] = "tg/model/InlineQuery.lua",
      ["tg.model.Keyboard"] = "tg/model/Keyboard.lua",
      ["tg.model.Message"] = "tg/model/Message.lua",
      ["tg.model.MessageEntity"] = "tg/model/MessageEntity.lua",
      ["tg.model.SendMessage"] = "tg/model/SendMessage.lua",
      ["tg.model.Update"] = "tg/model/Update.lua",
      ["tg.model.User"] = "tg/model/User.lua",
      ["tg.model.base"] = "tg/model/base.lua",
      ["tg.model.editMessageText"] = "tg/model/editMessageText.lua",
      ["tg.orm"] = "tg/orm.lua",
      ["tg.validator"] = "tg/validator.lua"
   }
}
