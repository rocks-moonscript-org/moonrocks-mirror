package = 'iptv-org-pro-url-tools'
version = '0.2.0-1'
source = {url = 'git+https://github.com/bbwdadfg/iptv-org-pro-url-tools.git', tag = 'v0.2.0', dir = 'iptv-org-pro-url-tools/lua'}
description = {summary = 'Offline URL helpers for iptv-org pro', homepage = 'https://iptv-org.pro/', license = 'MIT'}
dependencies = {'lua >= 5.1'}
build = {type = 'builtin', modules = {iptv_org_pro_url_tools = 'iptv_org_pro_url_tools.lua'}}
