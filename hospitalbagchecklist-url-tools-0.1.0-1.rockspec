package = 'hospitalbagchecklist-url-tools'
version = '0.1.0-1'
source = {
  url = 'https://github.com/wangneo276-lgtm/hospitalbagchecklist-url-tools/archive/refs/tags/v0.1.0.tar.gz',
  dir = 'hospitalbagchecklist-url-tools-0.1.0/lua'
}
description = {
  summary = "A free hospital bag checklist that tracks what you have, what to buy, what’s packed, what to ask your hospital and what to grab last. Saved on your device; print or PDF.",
  detailed = "A free hospital bag checklist that tracks what you have, what to buy, what’s packed, what to ask your hospital and what to grab last. Saved on your device; print or PDF.",
  homepage = 'https://hospitalbagchecklist.online/',
  license = 'MIT'
}
dependencies = { 'lua >= 5.1' }
build = {
  type = 'builtin',
  modules = { hospitalbagchecklist_url_tools = 'hospitalbagchecklist_url_tools.lua' }
}
