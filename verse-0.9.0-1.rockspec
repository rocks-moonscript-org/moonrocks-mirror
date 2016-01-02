package = "verse"
version = "0.9.0-1"
source = {
   url = "https://matthewwild.co.uk/projects/verse/downloads/verse-0.9.0.tar.gz";
}
description = {
   summary = "Verse is an XMPP library for Lua",
   detailed = [[
Verse is an XMPP library for Lua. It allows you to connect to an XMPP server, as
either a client or a component. It also supports connecting over HTTP (BOSH).]],
   homepage = "https://matthewwild.co.uk/projects/verse/",
   license = "MIT/X11"
}
dependencies = {
   "lua ~> 5.1";
   "luasocket";
   "luaexpat";
   "luasec";
}
build = {
   type = "builtin",
   modules = {
      bosh = "bosh.lua",
      client = "client.lua",
      component = "component.lua",
      ['doc.example'] = "doc/example.lua",
      ['doc.example_adhoc'] = "doc/example_adhoc.lua",
      ['doc.example_bosh'] = "doc/example_bosh.lua",
      ['doc.example_carbons'] = "doc/example_carbons.lua",
      ['doc.example_component'] = "doc/example_component.lua",
      ['doc.example_jingle'] = "doc/example_jingle.lua",
      ['doc.example_jingle_send'] = "doc/example_jingle_send.lua",
      ['doc.example_pep'] = "doc/example_pep.lua",
      ['doc.example_pubsub'] = "doc/example_pubsub.lua",
      verse = "init.lua",
      ['libs.adhoc.lib'] = "libs/adhoc.lib.lua",
      ['libs.bit'] = "libs/bit.lua",
      ['libs.encodings'] = "libs/encodings.lua",
      ['libs.hashes'] = "libs/hashes.lua",
      ['libs.xstanza'] = "libs/xstanza.lua",
      ['net.adns'] = "net/adns.lua",
      ['net.dns'] = "net/dns.lua",
      ['net.http'] = "net/http.lua",
      ['net.http.parser'] = "net/http/parser.lua",
      ['net.server'] = "net/server_select.lua",
      ['plugins.adhoc'] = "plugins/adhoc.lua",
      ['plugins.archive'] = "plugins/archive.lua",
      ['plugins.bind'] = "plugins/bind.lua",
      ['plugins.blocking'] = "plugins/blocking.lua",
      ['plugins.carbons'] = "plugins/carbons.lua",
      ['plugins.compression'] = "plugins/compression.lua",
      ['plugins.disco'] = "plugins/disco.lua",
      ['plugins.groupchat'] = "plugins/groupchat.lua",
      ['plugins.jingle'] = "plugins/jingle.lua",
      ['plugins.jingle_ft'] = "plugins/jingle_ft.lua",
      ['plugins.jingle_ibb'] = "plugins/jingle_ibb.lua",
      ['plugins.jingle_s5b'] = "plugins/jingle_s5b.lua",
      ['plugins.keepalive'] = "plugins/keepalive.lua",
      ['plugins.legacy'] = "plugins/legacy.lua",
      ['plugins.pep'] = "plugins/pep.lua",
      ['plugins.ping'] = "plugins/ping.lua",
      ['plugins.presence'] = "plugins/presence.lua",
      ['plugins.private'] = "plugins/private.lua",
      ['plugins.proxy65'] = "plugins/proxy65.lua",
      ['plugins.pubsub'] = "plugins/pubsub.lua",
      ['plugins.receipts'] = "plugins/receipts.lua",
      ['plugins.register'] = "plugins/register.lua",
      ['plugins.roster'] = "plugins/roster.lua",
      ['plugins.sasl'] = "plugins/sasl.lua",
      ['plugins.session'] = "plugins/session.lua",
      ['plugins.smacks'] = "plugins/smacks.lua",
      ['plugins.tls'] = "plugins/tls.lua",
      ['plugins.uptime'] = "plugins/uptime.lua",
      ['plugins.vcard'] = "plugins/vcard.lua",
      ['plugins.vcard_update'] = "plugins/vcard_update.lua",
      ['plugins.version'] = "plugins/version.lua",
      ['rsm.lib'] = "rsm.lib.lua",
      ['util.caps'] = "util/caps.lua",
      ['util.dataforms'] = "util/dataforms.lua",
      ['util.datetime'] = "util/datetime.lua",
      ['util.events'] = "util/events.lua",
      ['util.http'] = "util/http.lua",
      ['util.jid'] = "util/jid.lua",
      ['util.logger'] = "util/logger.lua",
      ['util.sasl.anonymous'] = "util/sasl/anonymous.lua",
      ['util.sasl.plain'] = "util/sasl/plain.lua",
      ['util.sasl.scram'] = "util/sasl/scram.lua",
      ['util.sha1'] = "util/sha1.lua",
      ['util.stanza'] = "util/stanza.lua",
      ['util.termcolours'] = "util/termcolours.lua",
      ['util.timer'] = "util/timer.lua",
      ['util.uuid'] = "util/uuid.lua",
      ['util.vcard'] = "util/vcard.lua",
      ['util.xmppstream'] = "util/xmppstream.lua"
   },
   copy_directories = {
      "doc"
   }
}
