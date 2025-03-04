package = "fhirformats"
version = "0.1.0-1"
source = {
  url = "git://github.com/vadi2/fhir-formats.git"
}
description = {
  summary = "FHIR XML to/from JSON converter in Lua",
  detailed = [[
       A Lua library to convert to and from FHIR XML and JSON formats based on the FHIR schema.
    ]],
  homepage = "https://github.com/vadi2/fhir-formats",
  maintainer = "Vadim Peretokin <vperetokin@gmail.com>",
  license = "Apache License 2.0"
}
dependencies = {
  "lua ~> 5.1",
  "xml",
  "lua-cjson",
  "lua-resty-prettycjson",
  "datafile"
}
build = {
  type = "builtin",

  modules = {
    ["fhirformats"] = "src/fhirformats.lua"
  },

  copy_directories = {"src/fhir-data"}
}
