package = "lua-resty-aws-signature"
version = "0.3-0"
source = {
   url = "https://github.com/bhhaskin/lua-resty-aws-signature/archive/refs/tags/v0.3-0.tar.gz",
    md5 = "2d90eed0edbecb830a994e8df4ef5063",
   dir = "lua-resty-aws-signature-0.3-0"
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