package = "kling4-app"
version = "0.1.0-1"
source = {url = "/tmp/kling4-app-0.1.0.tar.gz"}
description = {summary = "Minimal LuaRocks package for Kling 4 AI video generator metadata.", detailed = [[Minimal metadata package for the Kling 4 AI video generator site.]], homepage = "https://www.kling4.app/", license = "MIT"}
dependencies = {"lua >= 5.1"}
build = {type = "builtin", modules = {["kling4_app"] = "kling4_app.lua"}}
