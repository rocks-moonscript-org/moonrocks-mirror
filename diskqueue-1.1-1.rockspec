package = "diskqueue"

version = "1.1-1"

description = {
	summary = "Durable persistent on-disk queue module",
	detailed = [[
		Diskqueue provides a queue accessible to multiple processes, backed by any POSIX
		compliant filesystem. Any number of processes can write to the queue at any time
		without locking or race conditions, even via NFS. Using cqueues threads can block
		until a file is added. Entries persist over process restarts.
	]],
	
	license = "MIT/X11",
	homepage = "https://zadzmo.org/code/diskqueue"
}

source = {
	url = "https://zadzmo.org/code/diskqueue/downloads/diskqueue-1.1.tar.gz"
}

dependencies = {
	"lua >= 5.3, < 5.5",
	"lunix",
	"cqueues"
}

build = {
	type = "builtin",
	modules = {
		["diskqueue"] = "diskqueue.lua"
	}
}

