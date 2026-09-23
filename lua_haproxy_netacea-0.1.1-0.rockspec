rockspec_format = "3.0"

package = "lua_haproxy_netacea"
version = "0.1.1-0"

source = {
	url = "git+https://github.com/netacea/lua_haproxy_netacea.git"
}

description = {
	summary = "HAProxy Lua module for Netacea bot management integrations",
	homepage = "https://netacea.com/",
	maintainer = "Netacea Ltd.",
	license = "GPL-3.0"
}

dependencies = {
	"lua >= 5.4",
	"dkjson",
	"openssl"
}

build = {
	type = "builtin",
	modules = {
		aws_sigv4 = "lua/aws_sigv4.lua",
		ingest = "lua/ingest.lua",
		ingest_queue = "lua/ingest_queue.lua",
		kinesis = "lua/kinesis.lua",
		lua_haproxy_netacea = "lua/lua_haproxy_netacea.lua",
		netacea_config = "lua/netacea_config.lua",
		netacea_constants = "lua/netacea_constants.lua",
		netacea_cookies = "lua/netacea_cookies.lua",
		netacea_headers = "lua/netacea_headers.lua",
		netacea_ingest_record = "lua/netacea_ingest_record.lua",
		netacea_mitigation = "lua/netacea_mitigation.lua",
		netacea_protector = "lua/netacea_protector.lua",
		netacea_session = "lua/netacea_session.lua",
		netacea_txn = "lua/netacea_txn.lua",
		netacea_util = "lua/netacea_util.lua"
	}
}
