package = "cmdbuild"
version = "0.1.0-1"
source = {
  url = "https://bitbucket.org/enlab/cmdbuild_soap_api/get/master.tar.gz",
  dir = 'enlab-cmdbuild_soap_api-e2abccb5094f'
}
description = {
  summary = "CMDBuild SOAP API Wrapper",
  detailed = [[
    CMDBuild is an open source software to manage the configuration database (CMDB).

    CMDBuild is compliant with ITIL "best practices" for the IT services management according to process-oriented criteria.


    cmdbuild soap api wrapper
    ]],
    homepage = "https://bitbucket.org/enlab/cmdbuild_soap_api",
    license = "MIT"
}
dependencies = {
  "luasocket ~> 3.0rc1-2",
  "luaxml ~> 101012-2",
  "lua-cjson ~> 2.1.0-1",
  "bit32 ~> 5.3.0-1"
}
build = {
  type = 'builtin',
  copy_directories = { 'doc' },
  modules = {
    ['cmdbuild'] = 'src/cmdbuild.lua',
    ['cmdbuild.attachment'] = 'src/cmdbuild/attachment.lua',
    ['cmdbuild.card'] = 'src/cmdbuild/card.lua',
    ['cmdbuild.relation'] = 'src/cmdbuild/relation.lua',
    ['cmdbuild.lookup'] = 'src/cmdbuild/lookup.lua',
    ['cmdbuild.workflow'] = 'src/cmdbuild/workflow.lua',
    ['base64'] = 'src/base64.lua',
    ['Log'] = 'src/Log.lua',
    ['Utils'] = 'src/Utils.lua'
  }
}
