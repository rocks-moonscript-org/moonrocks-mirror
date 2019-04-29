package="kong-timechecking"
version="0.1.0-1"
description = {
    summary = "This package check time",
    homepage = "http://getkong.org",
    license = "Apache 2.0"
}

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/thanhdongnguyen/kong-timechecking",
  tag = "0.1.0"
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.kong-timechecking.handler"] = "kong/plugins/kong-timechecking/handler.lua",
        ["kong.plugins.kong-timechecking.schema"] = "kong/plugins/kong-timechecking/schema.lua"
    }
}