package = "LuaCrypto"
version = "0.3.0.20120524-1"
description = {
	summary = "A Lua frontend to OpenSSL",
	detailed = [[LuaCrypto is a Lua frontend to the OpenSSL cryptographic library. The OpenSSL features that are currently exposed are: 
digests (MD5, SHA-1, HMAC, and more), encryption, decryption and crypto-grade random number generators.]],
	homepage = "http://mkottman.github.com/luacrypto/",
	license = "MIT",
}
dependencies = {
	"lua >= 5.1",
}
external_dependencies = {
	OPENSSL = {
		header = "openssl/evp.h"
	}
}
source = {
	url = [[git://github.com/mkottman/luacrypto.git]],
	-- This is not the ideal way to mark a release, 
	-- but I contacted the author and he mentioned 
	-- that's what they're using in LuaDist.
	-- Please do not do this in your own rockspecs,
	-- push a proper tag to your repository instead.
	branch = "30e7d2db480eadb71a5b17322c828a7f008c3d2c",
}
build = {
	platforms = {
		windows = {
			type = "command",
			build_command = [[vcbuild ./luacrypto.vcproj Release /useenv /rebuild]],
			install_command = [[copy ".\Release\crypto.dll" "$(LIBDIR)\crypto.dll" /y ]]
		},
		unix = {
			type = "builtin",
			modules = {
				crypto = {
					sources = "src/lcrypto.c",
					incdirs = "$(OPENSSL_INCDIR)",
					libdirs = "$(OPENSSL_LIBDIR)",
					libraries = "crypto",
				}
			}
		}
	},
	copy_directories = { "doc" }
}
