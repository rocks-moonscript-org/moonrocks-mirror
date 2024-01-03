package = "netlink"
version = "1.0.1-1"
source = {
  url = "git://github.com/chris2511/lua-netlink",
  tag = "v1.0.1"
}
description = {
  summary = "Netlink event library",
  detailed = [[
      The netlink library subscribes to netlink events
      (link, ifaddr, route, neigh)
      and runs a lua callback function with a table as argument
      for each event.]],
  homepage = "https://github.com/chris2511/lua-netlink",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, <= 5.4"
}
-- Then netlink interface is linux specific
supported_platforms = { "linux" }

external_dependencies = {
  LIBMNL = {
    header = "libmnl/libmnl.h"
  }
}
build = {
  type = "builtin",
  modules = {
    netlink = {
      defines = { 'VERSION="1.0.1"' },
      sources = { "src/netlink.c", "src/lib.c", "src/ethtool.c",
                  "src/link.c", "src/ifaddr.c", "src/route.c",
                  "src/neigh.c" },
      libraries = { "mnl" },
    }
  }
}
