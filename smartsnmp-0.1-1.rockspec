package = "smartsnmp"
version = "0.1-1"
source = {
   url = "https://github.com/credosemi/smartsnmp/archive/58d1f077678708693332073ac75d96c918fa970c.zip"
}

description = {
	summary = "A smart snmp agent.",
	detailed = [[
    SmartSNMP is an minimal easy-config agent for
    networking management based on SNMPv2c. One of
    the biggest bonus is that you can write your
    own private mibs in lua5.1.
	]],
	homepage = "https://github.com/credosemi/smartsnmp",
	license = "GPLv2",
	maintainer = "leoma<leoma@credosemi.com>, xfguo<xfguo@credosemi.com>"
}

supported_platforms = {
	"linux",
	"openwrt",
	"freebsd",
}

dependencies = {
	"lua ~> 5.1",
}

build = {
  type = "command",
  build_command = "scons",
  copy_directories = { "doc", "tests" }
}
