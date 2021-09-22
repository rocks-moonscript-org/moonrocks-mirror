package = "yoke-mail"
version = "0.0.1-0"
source = {
   --url = "file:///home/zen/lib/yoke/yoke-mail-src.zip"
   url = "https://yokerp.com/src/yoke-mail-src.zip"
}
description = {
    summary = "Mail client for web and console",
    detailed = [[
      Not required but need yoke-file for mail attachments.
    ]],
    homepage = "https://yokerp.com",
    license = "GNU",
}
dependencies = {
  "yoke >= 0.0.1-0",
}

build = {
  type = "builtin",
  modules = {
    ["yoke.yoke.apps.mail.conf"] = "yoke/yoke/apps/mail/conf.lua",
    ["yoke.yoke.apps.mail.mods.mails"] = "yoke/yoke/apps/mail/mods/mails.lua",
    ["yoke.yoke.apps.mail.mods.logins"] = "yoke/yoke/apps/mail/mods/logins.lua",
    ["yoke.yoke.apps.mail.meta.tail"] = "yoke/yoke/apps/mail/meta/tail.lua",
    ["yoke.yoke.apps.mail.lang.en"] = "yoke/yoke/apps/mail/lang/en.lua",
    ["yoke.yoke.apps.mail.lang.uk"] = "yoke/yoke/apps/mail/lang/uk.lua",

    ["yoke.yoke.snap.mail.data"] = "yoke/yoke/snap/mail/data.lua",
    ["yoke.yoke.snap.mail.imap"] = "yoke/yoke/snap/mail/imap.lua",
    ["yoke.yoke.snap.mail.smtp"] = "yoke/yoke/snap/mail/smtp.lua",
    ["yoke.yoke.snap.mail.init"] = "yoke/yoke/snap/mail/init.lua",

    ["yoke.mail"] = "yoke/mail.lua"
  },
  install = {
    bin = {
    }
  }
}
