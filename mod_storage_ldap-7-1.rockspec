description = {
	["homepage"] = "https://modules.prosody.im/mod_storage_ldap.html";
	["summary"] = "LDAP storage for rosters, groups, and vcards";
	["license"] = "MIT";
}
source = {
	["url"] = "https://hg.prosody.im/prosody-modules/archive/e099586f9de5.tar.gz/mod_storage_ldap";
	["file"] = "prosody-modules-e099586f9de5.tar.gz";
	["dir"] = "Community-Modules-e099586f9de5/mod_storage_ldap";
}
package = "mod_storage_ldap"
version = "7-1"
build = {
	["type"] = "builtin";
	["modules"] = {
		["mod_storage_ldap"] = "mod_storage_ldap.lua";
		["ldap.vcard"] = "ldap/vcard.lib.lua";
	};
}
