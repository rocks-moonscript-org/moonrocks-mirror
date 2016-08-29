package = "luapgsql"
version = "1.6.1-1"

source = {
	url = "https://github.com/arcapos/luapgsql/archive/1.6.1.zip";
	md5 = "f9d7cbb1d12d46b259bc556a096d51c5";
	dir = "luapgsql-1.6.1";
}

description = {
	summary = "A Lua Binding for PostgreSQL";
	homepage = "https://github.com/arcapos/luapgsql";
	license = "3-clause BSD";
}

dependencies = {
	"lua >= 5.1, < 5.4";
}

external_dependencies = {
	PQ = {
		header = "libpq-fe.h";
		library = "pq";
	};
}

build = {
	type = "builtin";
	modules = {
		pgsql = {
			sources = "luapgsql.c";
			incdirs = { "$(PQ_INCDIR)" };
			libdirs = { "$(PQ_LIBDIR)" };
			libraries = { "pq" };
		};
	};
}
