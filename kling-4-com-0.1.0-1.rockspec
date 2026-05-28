package = "kling-4-com"
version = "0.1.0-1"
source = {url = "/tmp/kling-4-com-0.1.0.tar.gz"}
description = {summary = "Minimal LuaRocks package for Kling 4.0 AI video generator metadata.", detailed = [[Minimal metadata package for the Kling 4.0 AI video generator site.]], homepage = "https://www.kling-4.com/", license = "MIT"}
dependencies = {"lua >= 5.1"}
build = {type = "builtin", modules = {["kling_4_com"] = "kling_4_com.lua"}}
