package = "prosody"
local branch = "trunk"
local nightly = 570
version = "scm."..branch..".nightly"..nightly.."-1"
source = {
	url = "https://prosody.im/nightly/"..branch.."/build"..nightly.."/prosody-"..branch.."-1nightly"..nightly..".tar.gz";
	md5 = "28ccd2b2626a00fe3eaed1a79dd1fefe";
}
description = {
	summary = "Prosody is a modern XMPP communication server";
	homepage = "https://prosody.im/";
	license = "MIT/X11";
}
dependencies = {
	"lua ~> 5.1";
	"luafilesystem";
	"luasocket >= 2";
	"luasec >= 0.5";
	"luaexpat >= 1.3.0";
	"luaevent >= 0.4.3"; -- optional, for net.server_event
	"cqueues >= 20150113"; -- optional, for net.cqueues
	"lua-zlib"; -- optional, for mod_compression
	"luadbi >= 0.5"; -- optional, for mod_storage_sql
	"luabitop"; -- optional, for mod_websocket
}
external_dependencies = {
	IDN = {
		header = "stringprep.h";
		library = "idn";
	};
	OPENSSL = {
		header = "openssl/md5.h";
		library = "crypto";
	};
}
build = {
	type = "builtin";
	modules = {
		["core.certmanager"] = "core/certmanager.lua";
		["core.configmanager"] = "core/configmanager.lua";
		["core.hostmanager"] = "core/hostmanager.lua";
		["core.loggingmanager"] = "core/loggingmanager.lua";
		["core.moduleapi"] = "core/moduleapi.lua";
		["core.modulemanager"] = "core/modulemanager.lua";
		["core.portmanager"] = "core/portmanager.lua";
		["core.rostermanager"] = "core/rostermanager.lua";
		["core.s2smanager"] = "core/s2smanager.lua";
		["core.sessionmanager"] = "core/sessionmanager.lua";
		["core.stanza_router"] = "core/stanza_router.lua";
		["core.statsmanager"] = "core/statsmanager.lua";
		["core.storagemanager"] = "core/storagemanager.lua";
		["core.usermanager"] = "core/usermanager.lua";

		["net.adns"] = "net/adns.lua";
		["net.connlisteners"] = "net/connlisteners.lua";
		["net.cqueues"] = "net/cqueues.lua";
		["net.dns"] = "net/dns.lua";
		["net.http"] = "net/http.lua";
		["net.http.codes"] = "net/http/codes.lua";
		["net.http.parser"] = "net/http/parser.lua";
		["net.http.server"] = "net/http/server.lua";
		["net.httpserver"] = "net/httpserver.lua";
		["net.server"] = "net/server.lua";
		["net.server_event"] = "net/server_event.lua";
		["net.server_select"] = "net/server_select.lua";
		["net.websocket"] = "net/websocket.lua";
		["net.websocket.frames"] = "net/websocket/frames.lua";

		["util.adhoc"] = "util/adhoc.lua";
		["util.array"] = "util/array.lua";
		["util.async"] = "util/async.lua";
		["util.caps"] = "util/caps.lua";
		["util.dataforms"] = "util/dataforms.lua";
		["util.datamanager"] = "util/datamanager.lua";
		["util.datetime"] = "util/datetime.lua";
		["util.debug"] = "util/debug.lua";
		["util.dependencies"] = "util/dependencies.lua";
		["util.envload"] = "util/envload.lua";
		["util.events"] = "util/events.lua";
		["util.filters"] = "util/filters.lua";
		["util.helpers"] = "util/helpers.lua";
		["util.hex"] = "util/hex.lua";
		["util.hmac"] = "util/hmac.lua";
		["util.http"] = "util/http.lua";
		["util.import"] = "util/import.lua";
		["util.indexedbheap"] = "util/indexedbheap.lua";
		["util.ip"] = "util/ip.lua";
		["util.iterators"] = "util/iterators.lua";
		["util.jid"] = "util/jid.lua";
		["util.json"] = "util/json.lua";
		["util.logger"] = "util/logger.lua";
		["util.multitable"] = "util/multitable.lua";
		["util.openssl"] = "util/openssl.lua";
		["util.paths"] = "util/paths.lua";
		["util.pluginloader"] = "util/pluginloader.lua";
		["util.prosodyctl"] = "util/prosodyctl.lua";
		["util.pubsub"] = "util/pubsub.lua";
		["util.random"] = "util/random.lua";
		["util.rfc6724"] = "util/rfc6724.lua";
		["util.sasl"] = "util/sasl.lua";
		["util.sasl.anonymous"] = "util/sasl/anonymous.lua";
		["util.sasl.digest-md5"] = "util/sasl/digest-md5.lua";
		["util.sasl.external"] = "util/sasl/external.lua";
		["util.sasl.plain"] = "util/sasl/plain.lua";
		["util.sasl.scram"] = "util/sasl/scram.lua";
		["util.sasl_cyrus"] = "util/sasl_cyrus.lua";
		["util.serialization"] = "util/serialization.lua";
		["util.set"] = "util/set.lua";
		["util.sql"] = "util/sql.lua";
		["util.sslconfig"] = "util/sslconfig.lua";
		["util.stanza"] = "util/stanza.lua";
		["util.statistics"] = "util/statistics.lua";
		["util.template"] = "util/template.lua";
		["util.termcolours"] = "util/termcolours.lua";
		["util.throttle"] = "util/throttle.lua";
		["util.timer"] = "util/timer.lua";
		["util.uuid"] = "util/uuid.lua";
		["util.vcard"] = "util/vcard.lua";
		["util.watchdog"] = "util/watchdog.lua";
		["util.x509"] = "util/x509.lua";
		["util.xml"] = "util/xml.lua";
		["util.xmppstream"] = "util/xmppstream.lua";

		["util.encodings"] = {
			sources = { "util-src/encodings.c"; };
			libraries = { "idn"; };
			incdirs = { "$(IDN_INCDIR)"; };
			libdirs = { "$(IDN_LIBDIR)"; };
		};
		["util.hashes"] = {
			sources = { "util-src/hashes.c"; };
			libraries = { "crypto"; };
			incdirs = { "$(OPENSSL_INCDIR)"; };
			libdirs = { "$(OPENSSL_LIBDIR)"; };
		};
		["util.net"] = {
			sources = { "util-src/net.c"; };
		};
		["util.signal"] = {
			sources = { "util-src/signal.c"; };
		};

		-- ["fallbacks.bit"] = "fallbacks/bit.lua";
		-- ["fallbacks.lxp"] = "fallbacks/lxp.lua";

		["migrator.jabberd14"] = "tools/migration/migrator/jabberd14.lua";
		["migrator.prosody_sql"] = "tools/migration/migrator/prosody_sql.lua";
		["migrator.prosody_files"] = "tools/migration/migrator/prosody_files.lua";
		["migrator.mtools"] = "tools/migration/migrator/mtools.lua";

		["erlparse"] = "tools/erlparse.lua";
	};
	platforms = {
		unix = {
			modules = {
				["util.pposix"] = {
					sources = { "util-src/pposix.c"; };
					defines = { "_GNU_SOURCE"; };
				};
			};
		};
		windows = {
			modules = {
				["util.windows"] = {
					sources = { "util-src/windows.c"; };
				};
			};
		};
	};
	install = {
		bin = {
			["prosody"] = "prosody";
			["prosodyctl"] = "prosodyctl";
			["prosody-migrator"] = "tools/migration/prosody-migrator.lua";
			["ejabberd2prosody"] = "tools/ejabberd2prosody.lua";
			["ejabberdsql2prosody"] = "tools/ejabberdsql2prosody.lua";
			["jabberd14sql2prosody"] = "tools/jabberd14sql2prosody.lua";
			["openfire2prosody"] = "tools/openfire2prosody.lua";
			["xep227toprosody"] = "tools/xep227toprosody.lua";
		};
		conf = {
			["migrator.cfg"] = "tools/migration/migrator.cfg.lua";
			["prosody.cfg.lua"] = "prosody.cfg.lua.dist";
		};
	};
	copy_directories = {
		"doc";
		"man";
		"plugins";
	};
	patches = {
		["luarocks-paths.diff"] = [[
--- -	2015-01-20 15:19:59.612575624 -0500
+++ prosody	2015-01-20 15:17:38.751627764 -0500
@@ -9,12 +9,13 @@
 
 -- prosody - main executable for Prosody XMPP server
 
--- Will be modified by configure script if run --
+require "luarocks.loader";
+local luarocks_install_dir = require"luarocks.path".install_dir(assert(require "luarocks.show".pick_installed_rock("]] .. package .. [[", "]] .. version .. [[", nil)))
 
-CFG_SOURCEDIR=os.getenv("PROSODY_SRCDIR");
-CFG_CONFIGDIR=os.getenv("PROSODY_CFGDIR");
-CFG_PLUGINDIR=os.getenv("PROSODY_PLUGINDIR");
-CFG_DATADIR=os.getenv("PROSODY_DATADIR");
+CFG_SOURCEDIR=os.getenv("PROSODY_SRCDIR") or (luarocks_install_dir);
+CFG_CONFIGDIR=os.getenv("PROSODY_CFGDIR") or (luarocks_install_dir .. "/conf");
+CFG_PLUGINDIR=os.getenv("PROSODY_PLUGINDIR") or (luarocks_install_dir .. "/plugins");
+CFG_DATADIR=os.getenv("PROSODY_DATADIR") or (luarocks_install_dir .. "/data");
 
 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
 
@@ -274,17 +275,7 @@
 end
 
 function read_version()
-	-- Try to determine version
-	local version_file = io.open((CFG_SOURCEDIR or ".").."/prosody.version");
-	if version_file then
-		prosody.version = version_file:read("*a"):gsub("%s*$", "");
-		version_file:close();
-		if #prosody.version == 12 and prosody.version:match("^[a-f0-9]+$") then
-			prosody.version = "hg:"..prosody.version;
-		end
-	else
-		prosody.version = "unknown";
-	end
+       prosody.version = "]] .. branch .. " nightly build " .. nightly .. [[";
 end
 
 function load_secondary_libraries()
]]
	};
}
