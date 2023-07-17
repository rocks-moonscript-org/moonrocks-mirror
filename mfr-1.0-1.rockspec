package = "mfr"
version = "1.0-1"
source = {url = "git://github.com/mb6ockatf/mfr.lua", tag="v1.0-1"}
description = {summary = "output formatter",
detailed = [[simple lua module with functions for output prettifying]],
homepage = "https://mb6ockatf.github.io/mfr.lua/", license = "AGPL-3.0"}
dependencies = {"lua >= 5.1"}
build = {type = "builtin", modules = {mfr = "mfr.lua"}}