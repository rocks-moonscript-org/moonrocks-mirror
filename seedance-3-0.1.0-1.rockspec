package = "seedance-3"
version = "0.1.0-1"
source = {url = "/tmp/seedance-3-0.1.0.tar.gz"}
description = {summary = "Minimal LuaRocks package for Seedance 3.0 AI video generator metadata.", detailed = [[Minimal metadata package for the Seedance 3.0 AI video generator site.]], homepage = "https://www.seedance3ai.app/", license = "MIT"}
dependencies = {"lua >= 5.1"}
build = {type = "builtin", modules = {["seedance_3"] = "seedance_3.lua"}}
