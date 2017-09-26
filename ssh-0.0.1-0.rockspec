package = "ssh"
version = "0.0.1-0"

description = {
	summary = "ssh bindings based on libssh2",
	homepage = "https://github.com/fnordpipe/lua-ssh",
	license = "MIT",
}

source = {
	url = "git+https://github.com/fnordpipe/lua-ssh.git",
	tag = "v0.0.1",
}

dependencies = {
	"lua > 5.1",
}

external_dependencies = {
  SSH = {
    header = "libssh2.h",
    library = "libssh2.so",
  },
}

build = {
	type = "make",
	install_pass = false,
	build_variables = {
		CFLAGS="$(CFLAGS)",
		LUA="$(LUA)",
		LUA_INCDIR="$(LUA_INCDIR)",
	},
	install = {
		lib = {
			["ssh"] = "ssh.so",
		},
	},
}
