package = "kong-plugin-s3-presign"
version = "0.2.1-1"

source = {
  url = "git+https://github.com/adamtheapiguy/kong-plugin-s3-presign.git",
  tag = "v0.2.1",
}

description = {
  summary  = "Mints presigned S3 URLs and lists bucket contents natively in Kong",
  detailed = [[
    Kong plugin for S3-compatible object stores (developed against Pure
    Storage FlashBlade). Terminates in the access phase and returns presigned
    upload forms, presigned download URLs as a 307 redirect, and bucket
    listings mirroring the S3 ListObjectsV2 response as JSON.
  ]],
  homepage = "https://github.com/adamtheapiguy/kong-plugin-s3-presign",
  license  = "Apache-2.0",
}

dependencies = {
  "lua >= 5.1",
  "lua-resty-http >= 0.17",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.s3-presign.handler"] = "kong/plugins/s3-presign/handler.lua",
    ["kong.plugins.s3-presign.schema"]  = "kong/plugins/s3-presign/schema.lua",
    ["kong.plugins.s3-presign.sigv4"]   = "kong/plugins/s3-presign/sigv4.lua",
  },
}
