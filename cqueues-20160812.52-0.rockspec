package = "cqueues"
version = "20160812.52-0"
source = {
	url = "https://github.com/wahern/cqueues/archive/snap-20160812.tar.gz";
	md5 = "867d251579710f82c190fb47b291f418";
	dir = "cqueues-snap-20160812";
}
description = {
	summary = "Continuation Queues: Embeddable asynchronous networking, threading, and notification framework for Lua on Unix.";
	homepage = "http://25thandclement.com/~william/projects/cqueues.html";
	license = "MIT/X11";
	maintainer = "Daurnimator <quae@daurnimator.com>";
}
supported_platforms = {
	"linux";
	"bsd";
	"solaris";
}
dependencies = {
	"lua == 5.2";
}
external_dependencies = {
	OPENSSL = {
		header = "openssl/ssl.h";
		library = "ssl";
	};
	CRYPTO = {
		header = "openssl/crypto.h";
		library = "crypto";
	};
}
build = {
	type = "make";
	makefile = "GNUmakefile";

	build_target = "all5.2";
	build_variables = {
		CFLAGS = "$(CFLAGS)";
		LDFLAGS = "$(LDFLAGS)";
		bindir = "$(LUA_BINDIR)";
		includedir = "$(LUA_INCDIR)";
		libdir = "$(LUA_LIBDIR)";
	};

	install_target = "install5.2";
	install_variables = {
		prefix = "$(PREFIX)";
		lua52cpath = "$(LIBDIR)";
		lua52path = "$(LUADIR)";
		bindir = "$(BINDIR)";
	};
}
