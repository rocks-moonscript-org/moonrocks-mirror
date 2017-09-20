package = "s3-cjson2"
version = "1.0-5"

source = {
   url = "git://github.com/UseFedora/lua-s3",
}

description = {
   summary = "A simple S3 API to upload and download objects",
   homepage = "https://github.com/UseFedora/lua-s3"
}

dependencies = {
   "lua-resty-hmac",
   "luacrypto",
   "lua-cjson2",
   "date",
   "luasocket",
}

build = {
   type = "builtin",
   modules = {
      ['s3.init'] = 'init.lua',
   }
}
