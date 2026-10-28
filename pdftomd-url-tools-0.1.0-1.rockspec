package = 'pdftomd-url-tools'
version = '0.1.0-1'
source = {
  url = 'https://github.com/wangneo276-lgtm/pdftomd-url-tools/archive/refs/tags/v0.1.0.tar.gz',
  dir = 'pdftomd-url-tools-0.1.0/lua'
}
description = {
  summary = 'Free in-browser pdf to md tool. Drop a text PDF, preview Markdown, copy or download—files stay on your device. No account required.',
  detailed = 'Free in-browser pdf to md tool. Drop a text PDF, preview Markdown, copy or download—files stay on your device. No account required.',
  homepage = 'https://pdftomd.tools/',
  license = 'MIT'
}
dependencies = { 'lua >= 5.1' }
build = {
  type = 'builtin',
  modules = { pdftomd_url_tools = 'pdftomd_url_tools.lua' }
}
