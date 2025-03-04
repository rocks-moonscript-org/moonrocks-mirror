package = "lua-resty-validation"
version = "2.1-1"
source = {
    url = "git://github.com/bungle/lua-resty-validation.git",
    branch = "v2.1"
}
description = {
    summary = "Validation Library (Input Validation and Filtering) for Lua and OpenResty",
    detailed = "lua-resty-validation is an extendable chaining validation and filtering library for Lua and OpenResty.",
    homepage = "https://github.com/bungle/lua-resty-validation",
    maintainer = "Aapo Talvensaari <aapo.talvensaari@gmail.com>",
    license = "BSD"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["resty.validation"]     = "lib/resty/validation.lua",
        ["resty.validation.tz"]  = "lib/resty/validation/tz.lua",
        ["resty.validation.ngx"] = "lib/resty/validation/ngx.lua"
    }
}
