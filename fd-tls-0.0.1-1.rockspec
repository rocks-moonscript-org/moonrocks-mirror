package = "fd-tls"
version = "0.0.1-1"

source = {
	url = "git://github.com/dozyio/lua-fd-tls",
	tag = "v0.0.1",
}

description = {
	summary = "Tiny fd-based TLS module for Lua",
	detailed = "Minimal native module surface for libp2p-style fd TLS handshakes.",
	homepage = "https://github.com/dozyio/lua-fd-tls",
	license = "MIT",
}

dependencies = {
	"lua >= 5.4",
}

external_dependencies = {
	OPENSSL = {
		header = "openssl/ssl.h",
		library = "ssl",
	},
	CRYPTO = {
		header = "openssl/crypto.h",
		library = "crypto",
	},
}

build = {
	type = "builtin",
	modules = {
		["fd_tls"] = "lua/fd_tls/init.lua",
		["fd_tls.core"] = {
			sources = { "src/fd_tls.c", "src/tls_conn.c" },
			incdirs = { "$(OPENSSL_INCDIR)", "$(CRYPTO_INCDIR)" },
			libdirs = { "$(OPENSSL_LIBDIR)", "$(CRYPTO_LIBDIR)" },
			libraries = { "ssl", "crypto" },
		},
	},
}
