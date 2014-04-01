package = "lapis-exceptions"
version = "1.0.0-1"

source = {
  url = "git://github.com/leafo/lapis-exceptions.git",
	branch = "v1.0.0"
}

description = {
  summary = "Track Lapis exceptions to database and email when they happen",
  license = "MIT",
  maintainer = "Leaf Corcoran <leafot@gmail.com>",
}

dependencies = {
  "lua == 5.1",
  "lapis"
}

build = {
  type = "builtin",
  modules = {
		["lapis.exceptions.email"] = "lapis/exceptions/email.lua",
		["lapis.exceptions.models"] = "lapis/exceptions/models.lua",
		["lapis.features.exception_tracking"] = "lapis/features/exception_tracking.lua",
  }
}

