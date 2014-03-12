package = "tethys"
version = "2.0.0-1"
source = {
   url = "http://lua.net-core.org/dl/tethys/tethys-2.0.0.tar.gz",
}
description = {
   summary = "Tethys SMTP Server",
   detailed = [[
      Easy to use, small, understandable, extensible SMTP server.
   ]],
   license = "GPL-3",
   homepage = "http://lua.net-core.org/sputnik.lua?p=Tethys:About"
}
dependencies = {
   "lua >= 5.1",
   "config >= 1.0.0",
   "luadns >= 1.0.0",
   "luadaemon >= 1.0.0",
   "luafam >= 1.0.0",
--   "luasql-mysql >= 1.0.0",
   "copas >= 1.1.1",
   "lposix >= 20031107-1",
   "luafilesystem >= 1.3.0",
   "luasyslog >= 1.0.0",
   "luasocket >= 2.0.2",
}
build = {
   type = "none",
   install = {
      lua = {
        ['tethys2.core.ReceiverServer'] = 'tethys2/core/ReceiverServer.lua',
        ['tethys2.core.LocalDrop'] = 'tethys2/core/LocalDrop.lua',
        ['tethys2.core.State'] = 'tethys2/core/State.lua',
        ['tethys2.core.SMTPSender'] = 'tethys2/core/SMTPSender.lua',
        ['tethys2.core.Server'] = 'tethys2/core/Server.lua',
        ['tethys2.core.SenderServer'] = 'tethys2/core/SenderServer.lua',
        ['tethys2.core.SMTPReceiver'] = 'tethys2/core/SMTPReceiver.lua',
        ['tethys2.core.Sendmail'] = 'tethys2/core/Sendmail.lua',
        ['tethys2.util.Maildir'] = 'tethys2/util/Maildir.lua',
        ['tethys2.util.SQL'] = 'tethys2/util/SQL.lua',
        ['tethys2.util.Relaydir'] = 'tethys2/util/Relaydir.lua',
        ['tethys2.util.dns'] = 'tethys2/util/dns.lua',
        ['tethys2.util.MailFormat'] = 'tethys2/util/MailFormat.lua',
        ['tethys2.util.util'] = 'tethys2/util/util.lua',
        ['tethys2.util.MIMEMail'] = 'tethys2/util/MIMEMail.lua',
        ['tethys2.plugins.deposit.DiskSpool'] = 'tethys2/plugins/deposit/DiskSpool.lua',
        ['tethys2.plugins.deposit.Relay'] = 'tethys2/plugins/deposit/Relay.lua',
        ['tethys2.plugins.deposit.Pipe'] = 'tethys2/plugins/deposit/Pipe.lua',
        ['tethys2.plugins.deposit.Mailman'] = 'tethys2/plugins/deposit/Mailman.lua',
        ['tethys2.plugins.deposit.Plugin'] = 'tethys2/plugins/deposit/Plugin.lua',
        ['tethys2.plugins.filter.SpamAssassin'] = 'tethys2/plugins/filter/SpamAssassin.lua',
        ['tethys2.plugins.filter.MySQL'] = 'tethys2/plugins/filter/MySQL.lua',
        ['tethys2.plugins.filter.Plugin'] = 'tethys2/plugins/filter/Plugin.lua',
        ['tethys2.plugins.user_manager.UnixAlias'] = 'tethys2/plugins/user_manager/UnixAlias.lua',
        ['tethys2.plugins.user_manager.MySQL'] = 'tethys2/plugins/user_manager/MySQL.lua',
        ['tethys2.plugins.user_manager.Plugin'] = 'tethys2/plugins/user_manager/Plugin.lua',
      },
      bin = {
        ["tethys2-receiver"] = "bin/tethys2-receiver",
        ["tethys2-sender"] = "bin/tethys2-sender",
        ["tethys2-sendmail"] = "bin/tethys2-sendmail",
        ["tethys2-localdrop"] = "bin/tethys2-localdrop",
        ["tethys2-mailman"] = "bin/tethys2-mailman.sh",
      },
      conf = {
        ["smtp-config"] = "config/smtp.config.lua",
        ["mysql-filter-config"] = "config/mysql.filter.config.lua",
        ["mysql-usermanager-config"] = "config/mysql.user_manager.config.lua",
        ["unixalias-usermanager-config"] = "config/unixalias.user_manager.config.lua",
      },
   }
}
