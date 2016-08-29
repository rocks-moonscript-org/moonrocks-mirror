package = "cqueues-pgsql"
version = "0.1-0"
source = {
	url = "https://github.com/daurnimator/cqueues-pgsql/archive/v0.1.zip";
	dir = "cqueues-pgsql-0.1";

}
description = {
	summary = "A wrapper around luapgsql that uses cqueues";
	detailed = [[
		When used within a cqueues event loop your postgres operations will be non-blocking!
		API is identical to luapgsql, please refer to documentation there.
	]];
	homepage = "https://github.com/daurnimator/cqueues-pgsql";
	license = "MIT/X11";
}
dependencies = {
	"lua >= 5.1";
	"cqueues";
	"luapgsql >= 1.6.1";
}
build = {
	type = "builtin";
	modules = {
		['cqueues_pgsql'] = "cqueues_pgsql.lua";
	};
}
