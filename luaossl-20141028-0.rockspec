package = "luaossl"
version = "20141028-0"
source = {
	url = "https://github.com/wahern/luaossl/archive/deb-20141028-0.zip";
	dir = "luaossl-deb-20141028-0";
}
description = {
	summary = "Most comprehensive OpenSSL module in the Lua universe.";
	homepage = "http://25thandclement.com/~william/projects/luaossl.html";
	license = "MIT/X11";
}
supported_platforms = {
	"unix";
}
dependencies = {
	"lua";
}
external_dependencies = {
	OPENSSL = {
		header = "openssl/ssl.h";
		library = "ssl";
	};
	CRYPTO = {
		header = "openssl/hmac.h"; -- Picked one of the many header files
		library = "crypto";
	};
}
build = {
	type = "builtin";
	modules = {
		["_openssl"] = {
			sources = { "src/openssl.c"; };
			libraries = {
				"ssl"; "crypto";
				"pthread";
				"dl";
				"m";
			};
			defines = {
				"_REENTRANT"; "_THREAD_SAFE";
				"_GNU_SOURCE";
				"LUA_COMPAT_APIUNSIGNED";
			};
		};
		["openssl"] = "src/openssl.lua";
		["openssl.bignum"] = "src/openssl.bignum.lua";
		["openssl.cipher"] = "src/openssl.cipher.lua";
		["openssl.digest"] = "src/openssl.digest.lua";
		["openssl.hmac"] = "src/openssl.hmac.lua";
		["openssl.pkcs12"] = "src/openssl.pkcs12.lua";
		["openssl.pkey"] = "src/openssl.pkey.lua";
		["openssl.rand"] = "src/openssl.rand.lua";
		["openssl.ssl.context"] = "src/openssl.ssl.context.lua";
		["openssl.ssl"] = "src/openssl.ssl.lua";
		["openssl.x509.altname"] = "src/openssl.x509.altname.lua";
		["openssl.x509.chain"] = "src/openssl.x509.chain.lua";
		["openssl.x509.crl"] = "src/openssl.x509.crl.lua";
		["openssl.x509.extension"] = "src/openssl.x509.extension.lua";
		["openssl.x509"] = "src/openssl.x509.lua";
		["openssl.x509.name"] = "src/openssl.x509.name.lua";
		["openssl.x509.store"] = "src/openssl.x509.store.lua";
	}
}
