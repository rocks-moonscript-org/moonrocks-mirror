-- Alternate rockspec that uses luarocks builtin builder
package = "luv-updated"
version = "1.9.2-2"
source = {
  url="git://github.com/slact/luv",
  tag="v"..version:match("[^-]+")
}

description = {
  summary = "Bare libuv bindings for lua, with important updates from master",
  detailed = [[
libuv bindings for luajit and lua 5.1/5.2/5.3.

This library makes libuv available to lua scripts. It was made for the luvit
project but should usable from nearly any lua project.
  ]],
  homepage = "https://github.com/luvit/luv",
  license = "Apache 2.0"
}

dependencies = {
  "lua >= 5.1"
}

external_dependencies = {
  LIBUV = {
    header = 'uv.h'
  }
}

build = {
  type = 'builtin',
  -- default (platform-agnostic) configuration
  modules = {
    ['luv'] = {
      sources = {'src/luv.c'},
      libraries = {'uv'},
      incdirs = {"$(LIBUV_INCDIR)"},
      libdirs = {"$(LIBUV_LIBDIR)"}
    }
  };
  -- per-platform overrides
  platforms = {
    linux = {
      modules = {
        ['luv'] = {
          libraries = {
            nil;
            'pthread';
            'rt';
            'dl';
          };
        };
      };
    };
    freebsd = {
      modules = {
        ['luv'] = {
          libraries = {
            nil;
            'pthread';
            'kvm';
          };
        };
      };
    };
    windows = {
      modules = {
        ['luv'] = {
          libraries = {
            nil;
            'User32';
            'psapi';
            'iphlpapi';
            'userenv';
            'ws2_32';
            'advapi32';
          };
        };
      };
    };
  }
}
