package = "lua-resty-aws-email"
version = "0.01-0"
source = {
   url = "git://github.com/paragasu/lua-resty-aws-email",
   tag = "v0.01-0"
}
description = {
   summary  = "Lua resty module to send email using AWS Simple Email Service(SES)",
   homepage = "https://github.com/paragasu/lua-resty-aws-auth",
   license  = "MIT",
   maintainer = "Jeffry L. <paragasu@gmail.com>"
}
dependencies = {
   "lua >= 5.1",
   "lua-requests",
   "lua-resty-aws-auth"
}
build = {
   type = "builtin",
   modules = {
      ["resty.aws_email"] = "lib/resty/aws_email.lua",
   }
}
