package = "lua-resty-aws-signature"
version = "0.1-1"
source = {
   url = "https://github.com/bhhaskin/lua-resty-aws-signature/archive/refs/tags/v0.1-1.tar.gz",
    md5 = "c53bf7ae11a3e5ef0827d82c69c35547",
   dir = "lua-resty-aws-signature-0.1-1"
}
description = {
   summary  = "AWS signature V4 library for OpenResty ",
   homepage = "https://github.com/bhhaskin/lua-resty-aws-signature",
   license  = "MIT",
   maintainer = "Bryan Haskin <bhhaskin@bitsofsimplicity.com>"
}
dependencies = {
   "lua >= 5.1",
   "lua-resty-openssl"
}
build = {
   type = "builtin",
   modules = {
      ["resty.aws_signature"] = "src/resty/aws_signature.lua",
   }
}